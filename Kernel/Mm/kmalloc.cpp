/**
* BSD 2-Clause License
*
* Copyright (c) 2022 - 2023, Manas Kamal Choudhury
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, this
*    list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
**/

#include <Mm/kmalloc.h>
#include <stdint.h>
#include <string.h>
#include <_null.h>
#include <Mm/vmmngr.h>
#include <Mm/pmmngr.h>
#include <aucon.h>
#include <Sync/spinlock.h>
#include <Hal/x86_64_lowlevel.h>
#include <Hal\serial.h>
#include <Fs\vfs.h>

static meta_data_t *first_block;
static meta_data_t *last_block;
uint64_t last_mark;
bool _debug_on;
extern bool _vfs_debug_on;

void au_free_page(void* ptr, int pages);
void* au_request_page(int pages);

/*
* AuHeapInitialize -- initialize
* kernel malloc library with four pages (16KiB)
*/
void AuHeapInitialize() {
	last_block = NULL;
	first_block = NULL;
	last_mark = 0;
	_debug_on = false;
	void* page = au_request_page(1);
	memset(page, 0, (1 * 4096));
	/* setup the first meta data block */
	uint8_t* desc_addr = (uint8_t*)page;
	meta_data_t *meta = (meta_data_t*)desc_addr;
	meta->next = NULL;
	meta->prev = NULL;
	meta->magic = MAGIC_FREE;

	/* meta->size holds only the usable area size for user */
	meta->size = (1 * 4096) - sizeof(meta_data_t);
	first_block = meta;
	last_block = meta;
	
	last_mark = ((uint64_t)page + (meta->size + sizeof(meta_data_t)));
}

/*
 * next_power_of_two -- converts a odd value to
 * its next even value
 * @param val -- value to convert
 */
int next_power_of_two(unsigned int val) {
	int i = 0;
	for (--val; val > 0; val >>= 1)
		i++;
	return 1 << i;
}

size_t align24(size_t val) {
	size_t alignment = 24;
	return (val + alignment-1) & ~(alignment - 1);
}

/*
* au_split_block -- split block into two block
*/
int au_split_block(meta_data_t* splitable, size_t req_size) {

	uint8_t* meta_block_a = (uint8_t*)splitable;
	size_t size = splitable->size - req_size - sizeof(meta_data_t);


	if (size <= sizeof(meta_data_t))
		return 1;


	uint8_t* new_block = (uint8_t*)((size_t)splitable + sizeof(meta_data_t) + req_size);

	
	meta_data_t* new_block_m = (meta_data_t*)new_block;
	
	uint64_t new_block_pos = (uint64_t)new_block;
	
	if ((new_block_pos) >= last_mark) {
		SeTextOut("Aramse last mark \r\n");
		for (;;);
		return 0;
	}

	if ((new_block_pos + sizeof(meta_data_t)) >= last_mark){
		SeTextOut("Aramse Last mark \r\n");
		return 0;
	}

	new_block_m->magic = MAGIC_FREE;
	new_block_m->prev = splitable;
	new_block_m->next = splitable->next;
	if (new_block_m->next != NULL)
		new_block_m->next->prev = new_block_m;


	new_block_m->size = size;


	splitable->size = req_size;
	splitable->next = new_block_m;


	if (last_block == splitable)
		last_block = new_block_m;

	return 1;
}

/*
* au_expand_kmalloc -- Expand the heap
* @param req_size -- requested size
*/
void au_expand_kmalloc(size_t req_size) {

	/*if ((req_size % 2) != 0)
		req_size = next_power_of_two(req_size);*/

	
	size_t req_pages = ((req_size + sizeof(meta_data_t)) / 0x1000) + 
		(((req_size + sizeof(meta_data_t)) % 0x1000) ? 1 : 0);
	//req_pages = (req_size + sizeof(meta_data_t)) / 4096 + 1;
	void* page = au_request_page(req_pages);

	uint8_t* desc_addr = (uint8_t*)page;
	/* setup the first meta data block */
	meta_data_t *meta = (meta_data_t*)desc_addr;

	//meta->free = true;
	meta->next = NULL;
	meta->prev = NULL;
	meta->magic = MAGIC_FREE;
	
	/* meta->size holds only the usable area size for user */
	meta->size = (req_pages * PAGE_SIZE) - sizeof(meta_data_t);
	meta->prev = last_block;
	
	if (!meta->prev) {
		AuTextOut("Corrupted Heap Area !! Kernel stucked \n");
		for (;;);
	}
	last_block->next = meta;
	last_block = meta;

	

	/* now check if we can merge the last block and this
	* into one
	*/
	if (meta->prev->magic == MAGIC_FREE) {
		meta->prev->size += meta->size - sizeof(meta_data_t);
		meta->prev->next = NULL;
		last_block = meta->prev;
	}

	uint64_t lm = (uint64_t)page;
	last_mark = (uint64_t)(lm + (req_pages * 4096));

}

/*
* kmalloc -- allocate a small chunk of memory
* @param size -- size in bytes
*/
void* kmalloc(unsigned int size) {
	meta_data_t *meta = first_block;
	void* ret = 0;

	int sz = size;

	if (size < 24)
		size = 24;

	if ((size % 24) != 0) 
		size = align24(size);

	//SeTextOut("Requested sz -> %d , aligned -> %d \r\n", sz, size);

	/* now search begins */
	while (meta){
		if (meta->magic == MAGIC_FREE) {
			if (meta->size > size) {
				if (au_split_block(meta, size)){
					meta->magic = MAGIC_USED;
					uint8_t* meta_addr = (uint8_t*)meta;
					ret = (void*)((size_t)meta + sizeof(meta_data_t));
					break;
				}
			}

			if (meta->size == size) {
				meta->magic = MAGIC_USED;
				uint8_t* addr = (uint8_t*)meta;
				ret = ((uint8_t*)addr + sizeof(meta_data_t));
				break;
			}
		}

		meta = meta->next;
	}

	if (ret) {
	//	meta_data_t *meta = (meta_data_t*)(ret - sizeof(meta_data_t));
		//SeTextOut("Returning malloc mem -> %x \r\n", ret);
		return ret;
	}
	else{
		au_expand_kmalloc(size);

	}
	return kmalloc(size);
}

void kheap_debug() {
	for (meta_data_t *block = first_block; block != NULL; block = block->next) {
		SeTextOut("Prev -> %x || Current -> %x | Next -> %x \r\n", block->prev, block, block->next);
	}
}

/*
* merge_forward -- merges the next free block
* with current one
* @param meta -- current meta block
*/
void merge_next(meta_data_t *meta) {
	if (meta->next == NULL)
		return;
	uint64_t addr_valid = (uint64_t)meta->next;
	//AuTextOut("merge next -> %x \n", meta->next);
	if (addr_valid < 0xFFFFE00000000000) {
		SeTextOut("Meta merge next corrupted %x , curr -> %x \r\n",addr_valid, meta);
		meta->next = NULL;
		return;
	}

	if (!meta->next->magic == MAGIC_FREE)
		return;
	
	
	if (last_block == meta->next)
		last_block = meta;

	

	meta->size += meta->next->size + sizeof(meta_data_t);

	if (meta->next->next != NULL)
		meta->next->next->prev = meta;

	meta->next = meta->next->next;
}

/*
* merge_backward -- merges previos free block with
* current one
* @param meta -- current block
*/
void merge_prev(meta_data_t* meta) {
	if (meta->prev != NULL) {
		uint64_t meta_prev = (uint64_t)meta->prev;
		if (meta_prev < 0xFFFFE00000000000){
			//this block is corrupted
			SeTextOut("Meta found corrupted block %x \r\n", meta->prev);
			last_block->next = meta;
			meta->prev = last_block;
			meta->next = NULL;
			/*kheap_debug();
			for (;;);*/
			return;
		}
		if (meta->prev->magic == MAGIC_FREE)
			merge_next(meta->prev);
	}
}

/*
* free up a pointer
* @param ptr -- pointer to the address block to free
*/
void kfree(void* ptr) {
	if (!ptr) 
		return;
	if (((size_t)ptr % PAGE_SIZE) == 0)
		SeTextOut("KFREE: Ptr is page-aligned \r\n");

	uint8_t* actual_addr = (uint8_t*)ptr;
	meta_data_t *meta = (meta_data_t*)(actual_addr - sizeof(meta_data_t));
	if (meta->magic != MAGIC_USED) {
		AuTextOut("meta kfree corruption -> %x, meta -> %x \n", meta->magic, meta);
		return;
	}
	meta->magic = MAGIC_FREE;

	/* merge it with 3 near blocks if they are free*/
	merge_next(meta);
	merge_prev(meta);
	
}

/*
* krealloc -- reallocate a block from the old block
* @param ptr -- pointer to the old block
* @param new_size -- size of the new block
*/
void* krealloc(void* ptr, unsigned int new_size) {
	void* result = kmalloc(new_size);
	if (ptr) {
		/* here we can check the size difference
		* of new_size and old size from internal
		* data structure of kmalloc */
		memcpy(result, ptr, new_size);
	}

	kfree(ptr);
	return result;
}

/*
* kcalloc -- allocates a memory filled with zeroes
* @param n_item -- number of items
* @param size -- size of each items
*/
void* kcalloc(size_t n_item, size_t size) {
	size_t total = n_item * size;

	void* ptr = kmalloc(total);
	if (ptr)
		memset(ptr, 0, total);
	return ptr;
}
/*
* au_request_page -- request contiguous 4k virtual pages
* @param pages -- number of pages needs to be mapped
*/
void* au_request_page(int pages) {
	uint64_t* page = AuGetFreePage(0, false);
	uint64_t page_ = (uint64_t)page;
	
	for (size_t i = 0; i < pages; i++) {
		void* p = AuPmmngrAlloc();
		AuMapPage((uint64_t)p, page_ + i * 4096, 0);
	}
	
	return page;
}

/*
* au_free_page -- frees up pages, note that pages
* are needed to be 4k and contiguous
* @param ptr -- pointer to the first page
* @param pages --pages -- number of pages
*/
void au_free_page(void* ptr, int pages) {
	AuFreePages((uint64_t)ptr, true, pages);
}


void kmalloc_debug_on(bool bit) {
	_debug_on = bit;
}
