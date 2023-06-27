; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?last_mark@@3_KA				; last_mark
PUBLIC	?_debug_on@@3_NA				; _debug_on
_BSS	SEGMENT
?last_mark@@3_KA DQ 01H DUP (?)				; last_mark
?_debug_on@@3_NA DB 01H DUP (?)				; _debug_on
_BSS	ENDS
CONST	SEGMENT
$SG3083	DB	'Meta found corrupted block %x ', 0dH, 0aH, 00H
	ORG $+7
$SG3095	DB	'meta kfree corruption -> %x, meta -> %x ', 0aH, 00H
	ORG $+6
$SG3013	DB	'Aramse last mark ', 0dH, 0aH, 00H
	ORG $+4
$SG3063	DB	'Prev -> %x || Current -> %x | Next -> %x ', 0dH, 0aH, 00H
	ORG $+4
$SG3071	DB	'Meta merge next corrupted %x , curr -> %x ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	AuHeapInitialize
PUBLIC	kmalloc
PUBLIC	krealloc
PUBLIC	kcalloc
PUBLIC	kfree
PUBLIC	kheap_debug
PUBLIC	kmalloc_debug_on
PUBLIC	?au_free_page@@YAXPEAXH@Z			; au_free_page
PUBLIC	?au_request_page@@YAPEAXH@Z			; au_request_page
PUBLIC	?next_power_of_two@@YAHI@Z			; next_power_of_two
PUBLIC	?au_split_block@@YAHPEAU_meta_data_@@_K@Z	; au_split_block
PUBLIC	?au_expand_kmalloc@@YAX_K@Z			; au_expand_kmalloc
PUBLIC	?merge_next@@YAXPEAU_meta_data_@@@Z		; merge_next
PUBLIC	?merge_prev@@YAXPEAU_meta_data_@@@Z		; merge_prev
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	AuMapPage:PROC
EXTRN	AuGetFreePage:PROC
EXTRN	AuFreePages:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuTextOut:PROC
EXTRN	SeTextOut:PROC
_BSS	SEGMENT
	ALIGN	8

first_block DQ	01H DUP (?)
last_block DQ	01H DUP (?)
_BSS	ENDS
pdata	SEGMENT
$pdata$AuHeapInitialize DD imagerel $LN3
	DD	imagerel $LN3+201
	DD	imagerel $unwind$AuHeapInitialize
$pdata$kmalloc DD imagerel $LN13
	DD	imagerel $LN13+266
	DD	imagerel $unwind$kmalloc
$pdata$krealloc DD imagerel $LN4
	DD	imagerel $LN4+77
	DD	imagerel $unwind$krealloc
$pdata$kcalloc DD imagerel $LN4
	DD	imagerel $LN4+79
	DD	imagerel $unwind$kcalloc
$pdata$kfree DD	imagerel $LN5
	DD	imagerel $LN5+118
	DD	imagerel $unwind$kfree
$pdata$kheap_debug DD imagerel $LN6
	DD	imagerel $LN6+82
	DD	imagerel $unwind$kheap_debug
$pdata$?au_free_page@@YAXPEAXH@Z DD imagerel $LN3
	DD	imagerel $LN3+38
	DD	imagerel $unwind$?au_free_page@@YAXPEAXH@Z
$pdata$?au_request_page@@YAPEAXH@Z DD imagerel $LN6
	DD	imagerel $LN6+126
	DD	imagerel $unwind$?au_request_page@@YAPEAXH@Z
$pdata$?next_power_of_two@@YAHI@Z DD imagerel $LN6
	DD	imagerel $LN6+80
	DD	imagerel $unwind$?next_power_of_two@@YAHI@Z
$pdata$?au_split_block@@YAHPEAU_meta_data_@@_K@Z DD imagerel $LN7
	DD	imagerel $LN7+288
	DD	imagerel $unwind$?au_split_block@@YAHPEAU_meta_data_@@_K@Z
$pdata$?au_expand_kmalloc@@YAX_K@Z DD imagerel $LN6
	DD	imagerel $LN6+353
	DD	imagerel $unwind$?au_expand_kmalloc@@YAX_K@Z
$pdata$?merge_next@@YAXPEAU_meta_data_@@@Z DD imagerel $LN10
	DD	imagerel $LN10+271
	DD	imagerel $unwind$?merge_next@@YAXPEAU_meta_data_@@@Z
$pdata$?merge_prev@@YAXPEAU_meta_data_@@@Z DD imagerel $LN6
	DD	imagerel $LN6+160
	DD	imagerel $unwind$?merge_prev@@YAXPEAU_meta_data_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$AuHeapInitialize DD 010401H
	DD	08204H
$unwind$kmalloc DD 010801H
	DD	08208H
$unwind$krealloc DD 010d01H
	DD	0620dH
$unwind$kcalloc DD 010e01H
	DD	0620eH
$unwind$kfree DD 010901H
	DD	06209H
$unwind$kheap_debug DD 010401H
	DD	06204H
$unwind$?au_free_page@@YAXPEAXH@Z DD 010d01H
	DD	0420dH
$unwind$?au_request_page@@YAPEAXH@Z DD 010801H
	DD	08208H
$unwind$?next_power_of_two@@YAHI@Z DD 010801H
	DD	02208H
$unwind$?au_split_block@@YAHPEAU_meta_data_@@_K@Z DD 010e01H
	DD	0a20eH
$unwind$?au_expand_kmalloc@@YAX_K@Z DD 010901H
	DD	0a209H
$unwind$?merge_next@@YAXPEAU_meta_data_@@@Z DD 010901H
	DD	06209H
$unwind$?merge_prev@@YAXPEAU_meta_data_@@@Z DD 010901H
	DD	06209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
meta_prev$1 = 32
meta$ = 64
?merge_prev@@YAXPEAU_meta_data_@@@Z PROC		; merge_prev

; 260  : void merge_prev(meta_data_t* meta) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 261  : 	if (meta->prev != NULL) {

	mov	rax, QWORD PTR meta$[rsp]
	cmp	QWORD PTR [rax+16], 0
	je	$LN3@merge_prev

; 262  : 		uint64_t meta_prev = (uint64_t)meta->prev;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR meta_prev$1[rsp], rax

; 263  : 		if (meta_prev < 0xFFFFE00000000000){

	mov	rax, -35184372088832			; ffffe00000000000H
	cmp	QWORD PTR meta_prev$1[rsp], rax
	jae	SHORT $LN2@merge_prev

; 264  : 			//this block is corrupted
; 265  : 			SeTextOut("Meta found corrupted block %x \r\n", meta->prev);

	mov	rax, QWORD PTR meta$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG3083
	call	SeTextOut

; 266  : 			last_block->next = meta;

	mov	rax, QWORD PTR last_block
	mov	rcx, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+8], rcx

; 267  : 			meta->prev = last_block;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rcx, QWORD PTR last_block
	mov	QWORD PTR [rax+16], rcx

; 268  : 			meta->next = NULL;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+8], 0

; 269  : 			/*kheap_debug();
; 270  : 			for (;;);*/
; 271  : 			return;

	jmp	SHORT $LN4@merge_prev
$LN2@merge_prev:

; 272  : 		}
; 273  : 		if (meta->prev->magic == MAGIC_FREE)

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+16]
	cmp	DWORD PTR [rax], 86056995		; 05212023H
	jne	SHORT $LN1@merge_prev

; 274  : 			merge_next(meta->prev);

	mov	rax, QWORD PTR meta$[rsp]
	mov	rcx, QWORD PTR [rax+16]
	call	?merge_next@@YAXPEAU_meta_data_@@@Z	; merge_next
$LN1@merge_prev:
$LN3@merge_prev:
$LN4@merge_prev:

; 275  : 	}
; 276  : }

	add	rsp, 56					; 00000038H
	ret	0
?merge_prev@@YAXPEAU_meta_data_@@@Z ENDP		; merge_prev
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
tv75 = 32
addr_valid$ = 40
meta$ = 64
?merge_next@@YAXPEAU_meta_data_@@@Z PROC		; merge_next

; 227  : void merge_next(meta_data_t *meta) {

$LN10:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 228  : 	if (meta->next == NULL)

	mov	rax, QWORD PTR meta$[rsp]
	cmp	QWORD PTR [rax+8], 0
	jne	SHORT $LN5@merge_next

; 229  : 		return;

	jmp	$LN6@merge_next
$LN5@merge_next:

; 230  : 	uint64_t addr_valid = (uint64_t)meta->next;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR addr_valid$[rsp], rax

; 231  : 	//AuTextOut("merge next -> %x \n", meta->next);
; 232  : 	if (addr_valid < 0xFFFFE00000000000) {

	mov	rax, -35184372088832			; ffffe00000000000H
	cmp	QWORD PTR addr_valid$[rsp], rax
	jae	SHORT $LN4@merge_next

; 233  : 		SeTextOut("Meta merge next corrupted %x , curr -> %x \r\n",addr_valid, meta);

	mov	r8, QWORD PTR meta$[rsp]
	mov	rdx, QWORD PTR addr_valid$[rsp]
	lea	rcx, OFFSET FLAT:$SG3071
	call	SeTextOut

; 234  : 		meta->next = NULL;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+8], 0

; 235  : 		return;

	jmp	$LN6@merge_next
$LN4@merge_next:

; 236  : 	}
; 237  : 
; 238  : 	if (!meta->next->magic == MAGIC_FREE)

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	cmp	DWORD PTR [rax], 0
	jne	SHORT $LN8@merge_next
	mov	DWORD PTR tv75[rsp], 1
	jmp	SHORT $LN9@merge_next
$LN8@merge_next:
	mov	DWORD PTR tv75[rsp], 0
$LN9@merge_next:
	cmp	DWORD PTR tv75[rsp], 86056995		; 05212023H
	jne	SHORT $LN3@merge_next

; 239  : 		return;

	jmp	SHORT $LN6@merge_next
$LN3@merge_next:

; 240  : 	
; 241  : 	
; 242  : 	if (last_block == meta->next)

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	cmp	QWORD PTR last_block, rax
	jne	SHORT $LN2@merge_next

; 243  : 		last_block = meta;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR last_block, rax
$LN2@merge_next:

; 244  : 
; 245  : 	
; 246  : 
; 247  : 	meta->size += meta->next->size + sizeof(meta_data_t);

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	movsxd	rax, DWORD PTR [rax+4]
	mov	rcx, QWORD PTR meta$[rsp]
	movsxd	rcx, DWORD PTR [rcx+4]
	lea	rax, QWORD PTR [rcx+rax+24]
	mov	rcx, QWORD PTR meta$[rsp]
	mov	DWORD PTR [rcx+4], eax

; 248  : 
; 249  : 	if (meta->next->next != NULL)

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	cmp	QWORD PTR [rax+8], 0
	je	SHORT $LN1@merge_next

; 250  : 		meta->next->next->prev = meta;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	rax, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+16], rcx
$LN1@merge_next:

; 251  : 
; 252  : 	meta->next = meta->next->next;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR [rcx+8], rax
$LN6@merge_next:

; 253  : }

	add	rsp, 56					; 00000038H
	ret	0
?merge_next@@YAXPEAU_meta_data_@@@Z ENDP		; merge_next
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
tv69 = 32
meta$ = 40
req_pages$ = 48
page$ = 56
desc_addr$ = 64
lm$ = 72
req_size$ = 96
?au_expand_kmalloc@@YAX_K@Z PROC			; au_expand_kmalloc

; 133  : void au_expand_kmalloc(size_t req_size) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 134  : 	size_t req_pages = ((req_size + sizeof(meta_data_t)) / 0x1000) + 
; 135  : 		(((req_size + sizeof(meta_data_t)) % 0x1000) ? 1 : 0);

	mov	rax, QWORD PTR req_size$[rsp]
	add	rax, 24
	xor	edx, edx
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN4@au_expand_
	mov	DWORD PTR tv69[rsp], 1
	jmp	SHORT $LN5@au_expand_
$LN4@au_expand_:
	mov	DWORD PTR tv69[rsp], 0
$LN5@au_expand_:
	mov	rax, QWORD PTR req_size$[rsp]
	add	rax, 24
	xor	edx, edx
	mov	ecx, 4096				; 00001000H
	div	rcx
	movsxd	rcx, DWORD PTR tv69[rsp]
	add	rax, rcx
	mov	QWORD PTR req_pages$[rsp], rax

; 136  : 	//req_pages = (req_size + sizeof(meta_data_t)) / 4096 + 1;
; 137  : 	void* page = au_request_page(req_pages);

	mov	ecx, DWORD PTR req_pages$[rsp]
	call	?au_request_page@@YAPEAXH@Z		; au_request_page
	mov	QWORD PTR page$[rsp], rax

; 138  : 
; 139  : 	uint8_t* desc_addr = (uint8_t*)page;

	mov	rax, QWORD PTR page$[rsp]
	mov	QWORD PTR desc_addr$[rsp], rax

; 140  : 	/* setup the first meta data block */
; 141  : 	meta_data_t *meta = (meta_data_t*)desc_addr;

	mov	rax, QWORD PTR desc_addr$[rsp]
	mov	QWORD PTR meta$[rsp], rax

; 142  : 
; 143  : 	//meta->free = true;
; 144  : 	meta->next = NULL;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+8], 0

; 145  : 	meta->prev = NULL;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+16], 0

; 146  : 	meta->magic = MAGIC_FREE;

	mov	rax, QWORD PTR meta$[rsp]
	mov	DWORD PTR [rax], 86056995		; 05212023H

; 147  : 	
; 148  : 	/* meta->size holds only the usable area size for user */
; 149  : 	meta->size = (req_pages * 4096) - sizeof(meta_data_t);

	imul	rax, QWORD PTR req_pages$[rsp], 4096	; 00001000H
	sub	rax, 24
	mov	rcx, QWORD PTR meta$[rsp]
	mov	DWORD PTR [rcx+4], eax

; 150  : 	meta->prev = last_block;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rcx, QWORD PTR last_block
	mov	QWORD PTR [rax+16], rcx

; 151  : 	last_block->next = meta;

	mov	rax, QWORD PTR last_block
	mov	rcx, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+8], rcx

; 152  : 	last_block = meta;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR last_block, rax

; 153  : 
; 154  : 	
; 155  : 
; 156  : 	/* now check if we can merge the last block and this
; 157  : 	* into one
; 158  : 	*/
; 159  : 	if (meta->prev->magic == MAGIC_FREE) {

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+16]
	cmp	DWORD PTR [rax], 86056995		; 05212023H
	jne	SHORT $LN1@au_expand_

; 160  : 		meta->prev->size += meta->size - sizeof(meta_data_t);

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+16]
	mov	rcx, QWORD PTR meta$[rsp]
	movsxd	rcx, DWORD PTR [rcx+4]
	movsxd	rax, DWORD PTR [rax+4]
	lea	rax, QWORD PTR [rax+rcx-24]
	mov	rcx, QWORD PTR meta$[rsp]
	mov	rcx, QWORD PTR [rcx+16]
	mov	DWORD PTR [rcx+4], eax

; 161  : 		meta->prev->next = NULL;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR [rax+8], 0

; 162  : 		last_block = meta->prev;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR last_block, rax
$LN1@au_expand_:

; 163  : 	}
; 164  : 
; 165  : 	uint64_t lm = (uint64_t)page;

	mov	rax, QWORD PTR page$[rsp]
	mov	QWORD PTR lm$[rsp], rax

; 166  : 	last_mark = (uint64_t)(lm + (req_pages * 4096));

	imul	rax, QWORD PTR req_pages$[rsp], 4096	; 00001000H
	mov	rcx, QWORD PTR lm$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR ?last_mark@@3_KA, rax		; last_mark

; 167  : 
; 168  : }

	add	rsp, 88					; 00000058H
	ret	0
?au_expand_kmalloc@@YAX_K@Z ENDP			; au_expand_kmalloc
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
new_block_m$ = 32
new_block$ = 40
size$ = 48
meta_block_a$ = 56
new_block_pos$ = 64
splitable$ = 96
req_size$ = 104
?au_split_block@@YAHPEAU_meta_data_@@_K@Z PROC		; au_split_block

; 90   : int au_split_block(meta_data_t* splitable, size_t req_size) {

$LN7:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 91   : 
; 92   : 	uint8_t* meta_block_a = (uint8_t*)splitable;

	mov	rax, QWORD PTR splitable$[rsp]
	mov	QWORD PTR meta_block_a$[rsp], rax

; 93   : 	size_t size = splitable->size - req_size - sizeof(meta_data_t);

	mov	rax, QWORD PTR splitable$[rsp]
	movsxd	rax, DWORD PTR [rax+4]
	sub	rax, QWORD PTR req_size$[rsp]
	sub	rax, 24
	mov	QWORD PTR size$[rsp], rax

; 94   : 
; 95   : 	if (size <= sizeof(meta_data_t))

	cmp	QWORD PTR size$[rsp], 24
	ja	SHORT $LN4@au_split_b

; 96   : 		return 1;

	mov	eax, 1
	jmp	$LN5@au_split_b
$LN4@au_split_b:

; 97   : 
; 98   : 	uint8_t* new_block = (uint8_t*)(meta_block_a + sizeof(meta_data_t)+req_size);

	mov	rax, QWORD PTR meta_block_a$[rsp]
	mov	rcx, QWORD PTR req_size$[rsp]
	lea	rax, QWORD PTR [rax+rcx+24]
	mov	QWORD PTR new_block$[rsp], rax

; 99   : 	meta_data_t* new_block_m = (meta_data_t*)new_block;

	mov	rax, QWORD PTR new_block$[rsp]
	mov	QWORD PTR new_block_m$[rsp], rax

; 100  : 	
; 101  : 
; 102  : 	uint64_t new_block_pos = (uint64_t)new_block;

	mov	rax, QWORD PTR new_block$[rsp]
	mov	QWORD PTR new_block_pos$[rsp], rax

; 103  : 	if ((new_block_pos) >= last_mark) {

	mov	rax, QWORD PTR ?last_mark@@3_KA		; last_mark
	cmp	QWORD PTR new_block_pos$[rsp], rax
	jb	SHORT $LN3@au_split_b

; 104  : 		SeTextOut("Aramse last mark \r\n");

	lea	rcx, OFFSET FLAT:$SG3013
	call	SeTextOut

; 105  : 		return 1;

	mov	eax, 1
	jmp	$LN5@au_split_b
$LN3@au_split_b:

; 106  : 	}
; 107  : 
; 108  : 	//new_block->free = true;
; 109  : 	new_block_m->magic = MAGIC_FREE;

	mov	rax, QWORD PTR new_block_m$[rsp]
	mov	DWORD PTR [rax], 86056995		; 05212023H

; 110  : 	new_block_m->prev = splitable;

	mov	rax, QWORD PTR new_block_m$[rsp]
	mov	rcx, QWORD PTR splitable$[rsp]
	mov	QWORD PTR [rax+16], rcx

; 111  : 	new_block_m->next = splitable->next;

	mov	rax, QWORD PTR new_block_m$[rsp]
	mov	rcx, QWORD PTR splitable$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	QWORD PTR [rax+8], rcx

; 112  : 	if (new_block_m->next != NULL)

	mov	rax, QWORD PTR new_block_m$[rsp]
	cmp	QWORD PTR [rax+8], 0
	je	SHORT $LN2@au_split_b

; 113  : 		new_block_m->next->prev = new_block_m;

	mov	rax, QWORD PTR new_block_m$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR new_block_m$[rsp]
	mov	QWORD PTR [rax+16], rcx
$LN2@au_split_b:

; 114  : 
; 115  : 
; 116  : 	new_block_m->size = size;

	mov	rax, QWORD PTR new_block_m$[rsp]
	mov	ecx, DWORD PTR size$[rsp]
	mov	DWORD PTR [rax+4], ecx

; 117  : 
; 118  : 
; 119  : 	splitable->size = req_size;

	mov	rax, QWORD PTR splitable$[rsp]
	mov	ecx, DWORD PTR req_size$[rsp]
	mov	DWORD PTR [rax+4], ecx

; 120  : 	splitable->next = new_block_m;

	mov	rax, QWORD PTR splitable$[rsp]
	mov	rcx, QWORD PTR new_block_m$[rsp]
	mov	QWORD PTR [rax+8], rcx

; 121  : 
; 122  : 
; 123  : 	if (last_block == splitable)

	mov	rax, QWORD PTR splitable$[rsp]
	cmp	QWORD PTR last_block, rax
	jne	SHORT $LN1@au_split_b

; 124  : 		last_block = new_block_m;

	mov	rax, QWORD PTR new_block_m$[rsp]
	mov	QWORD PTR last_block, rax
$LN1@au_split_b:

; 125  : 
; 126  : 	return 1;

	mov	eax, 1
$LN5@au_split_b:

; 127  : }

	add	rsp, 88					; 00000058H
	ret	0
?au_split_block@@YAHPEAU_meta_data_@@_K@Z ENDP		; au_split_block
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
i$ = 0
tv74 = 4
val$ = 32
?next_power_of_two@@YAHI@Z PROC				; next_power_of_two

; 80   : int next_power_of_two(unsigned int val) {

$LN6:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 24

; 81   : 	int i = 0;

	mov	DWORD PTR i$[rsp], 0

; 82   : 	for (--val; val > 0; val >>= 1)

	mov	eax, DWORD PTR val$[rsp]
	dec	eax
	mov	DWORD PTR val$[rsp], eax
	jmp	SHORT $LN3@next_power
$LN2@next_power:
	mov	eax, DWORD PTR val$[rsp]
	shr	eax, 1
	mov	DWORD PTR val$[rsp], eax
$LN3@next_power:
	cmp	DWORD PTR val$[rsp], 0
	jbe	SHORT $LN1@next_power

; 83   : 		i++;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
	jmp	SHORT $LN2@next_power
$LN1@next_power:

; 84   : 	return 1 << i;

	mov	eax, DWORD PTR i$[rsp]
	mov	ecx, 1
	mov	DWORD PTR tv74[rsp], ecx
	movzx	ecx, al
	mov	eax, DWORD PTR tv74[rsp]
	shl	eax, cl

; 85   : }

	add	rsp, 24
	ret	0
?next_power_of_two@@YAHI@Z ENDP				; next_power_of_two
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
i$1 = 32
page$ = 40
page_$ = 48
p$2 = 56
pages$ = 80
?au_request_page@@YAPEAXH@Z PROC			; au_request_page

; 334  : void* au_request_page(int pages) {

$LN6:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 72					; 00000048H

; 335  : 	uint64_t* page = AuGetFreePage(0, false);

	xor	edx, edx
	xor	ecx, ecx
	call	AuGetFreePage
	mov	QWORD PTR page$[rsp], rax

; 336  : 	uint64_t page_ = (uint64_t)page;

	mov	rax, QWORD PTR page$[rsp]
	mov	QWORD PTR page_$[rsp], rax

; 337  : 
; 338  : 	for (size_t i = 0; i < pages; i++) {

	mov	QWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@au_request
$LN2@au_request:
	mov	rax, QWORD PTR i$1[rsp]
	inc	rax
	mov	QWORD PTR i$1[rsp], rax
$LN3@au_request:
	movsxd	rax, DWORD PTR pages$[rsp]
	cmp	QWORD PTR i$1[rsp], rax
	jae	SHORT $LN1@au_request

; 339  : 		void* p = AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR p$2[rsp], rax

; 340  : 		AuMapPage((uint64_t)p, page_ + i * 4096, 0);

	imul	rax, QWORD PTR i$1[rsp], 4096		; 00001000H
	mov	rcx, QWORD PTR page_$[rsp]
	add	rcx, rax
	mov	rax, rcx
	xor	r8d, r8d
	mov	rdx, rax
	mov	rcx, QWORD PTR p$2[rsp]
	call	AuMapPage

; 341  : 	}

	jmp	SHORT $LN2@au_request
$LN1@au_request:

; 342  : 	return page;

	mov	rax, QWORD PTR page$[rsp]

; 343  : }

	add	rsp, 72					; 00000048H
	ret	0
?au_request_page@@YAPEAXH@Z ENDP			; au_request_page
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
ptr$ = 48
pages$ = 56
?au_free_page@@YAXPEAXH@Z PROC				; au_free_page

; 351  : void au_free_page(void* ptr, int pages) {

$LN3:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 352  : 	AuFreePages((uint64_t)ptr, true, pages);

	movsxd	rax, DWORD PTR pages$[rsp]
	mov	r8, rax
	mov	dl, 1
	mov	rcx, QWORD PTR ptr$[rsp]
	call	AuFreePages

; 353  : }

	add	rsp, 40					; 00000028H
	ret	0
?au_free_page@@YAXPEAXH@Z ENDP				; au_free_page
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
bit$ = 8
kmalloc_debug_on PROC

; 356  : void kmalloc_debug_on(bool bit) {

	mov	BYTE PTR [rsp+8], cl

; 357  : 	_debug_on = bit;

	movzx	eax, BYTE PTR bit$[rsp]
	mov	BYTE PTR ?_debug_on@@3_NA, al		; _debug_on

; 358  : }

	ret	0
kmalloc_debug_on ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
block$1 = 32
kheap_debug PROC

; 216  : void kheap_debug() {

$LN6:
	sub	rsp, 56					; 00000038H

; 217  : 	for (meta_data_t *block = first_block; block != NULL; block = block->next) {

	mov	rax, QWORD PTR first_block
	mov	QWORD PTR block$1[rsp], rax
	jmp	SHORT $LN3@kheap_debu
$LN2@kheap_debu:
	mov	rax, QWORD PTR block$1[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR block$1[rsp], rax
$LN3@kheap_debu:
	cmp	QWORD PTR block$1[rsp], 0
	je	SHORT $LN1@kheap_debu

; 218  : 		SeTextOut("Prev -> %x || Current -> %x | Next -> %x \r\n", block->prev, block, block->next);

	mov	rax, QWORD PTR block$1[rsp]
	mov	r9, QWORD PTR [rax+8]
	mov	r8, QWORD PTR block$1[rsp]
	mov	rax, QWORD PTR block$1[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG3063
	call	SeTextOut

; 219  : 	}

	jmp	SHORT $LN2@kheap_debu
$LN1@kheap_debu:

; 220  : }

	add	rsp, 56					; 00000038H
	ret	0
kheap_debug ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
meta$ = 32
actual_addr$ = 40
ptr$ = 64
kfree	PROC

; 282  : void kfree(void* ptr) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 283  : 	if (!ptr) 

	cmp	QWORD PTR ptr$[rsp], 0
	jne	SHORT $LN2@kfree

; 284  : 		return;

	jmp	SHORT $LN3@kfree
$LN2@kfree:

; 285  : 	uint8_t* actual_addr = (uint8_t*)ptr;

	mov	rax, QWORD PTR ptr$[rsp]
	mov	QWORD PTR actual_addr$[rsp], rax

; 286  : 	meta_data_t *meta = (meta_data_t*)(actual_addr - sizeof(meta_data_t));

	mov	rax, QWORD PTR actual_addr$[rsp]
	sub	rax, 24
	mov	QWORD PTR meta$[rsp], rax

; 287  : 	if (meta->magic != MAGIC_USED) {

	mov	rax, QWORD PTR meta$[rsp]
	cmp	DWORD PTR [rax], 369500162		; 16062002H
	je	SHORT $LN1@kfree

; 288  : 		AuTextOut("meta kfree corruption -> %x, meta -> %x \n", meta->magic, meta);

	mov	r8, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR meta$[rsp]
	mov	edx, DWORD PTR [rax]
	lea	rcx, OFFSET FLAT:$SG3095
	call	AuTextOut

; 289  : 		return;

	jmp	SHORT $LN3@kfree
$LN1@kfree:

; 290  : 	}
; 291  : 	meta->magic = MAGIC_FREE;

	mov	rax, QWORD PTR meta$[rsp]
	mov	DWORD PTR [rax], 86056995		; 05212023H

; 292  : 
; 293  : 	/* merge it with 3 near blocks if they are free*/
; 294  : 	merge_next(meta);

	mov	rcx, QWORD PTR meta$[rsp]
	call	?merge_next@@YAXPEAU_meta_data_@@@Z	; merge_next

; 295  : 	merge_prev(meta);

	mov	rcx, QWORD PTR meta$[rsp]
	call	?merge_prev@@YAXPEAU_meta_data_@@@Z	; merge_prev
$LN3@kfree:

; 296  : 	
; 297  : }

	add	rsp, 56					; 00000038H
	ret	0
kfree	ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
ptr$ = 32
total$ = 40
n_item$ = 64
size$ = 72
kcalloc	PROC

; 322  : void* kcalloc(size_t n_item, size_t size) {

$LN4:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 323  : 	size_t total = n_item * size;

	mov	rax, QWORD PTR n_item$[rsp]
	imul	rax, QWORD PTR size$[rsp]
	mov	QWORD PTR total$[rsp], rax

; 324  : 
; 325  : 	void* ptr = kmalloc(total);

	mov	ecx, DWORD PTR total$[rsp]
	call	kmalloc
	mov	QWORD PTR ptr$[rsp], rax

; 326  : 	if (ptr)

	cmp	QWORD PTR ptr$[rsp], 0
	je	SHORT $LN1@kcalloc

; 327  : 		memset(ptr, 0, total);

	mov	r8d, DWORD PTR total$[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR ptr$[rsp]
	call	memset
$LN1@kcalloc:

; 328  : 	return ptr;

	mov	rax, QWORD PTR ptr$[rsp]

; 329  : }

	add	rsp, 56					; 00000038H
	ret	0
kcalloc	ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
result$ = 32
ptr$ = 64
new_size$ = 72
krealloc PROC

; 304  : void* krealloc(void* ptr, unsigned int new_size) {

$LN4:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 305  : 	void* result = kmalloc(new_size);

	mov	ecx, DWORD PTR new_size$[rsp]
	call	kmalloc
	mov	QWORD PTR result$[rsp], rax

; 306  : 	if (ptr) {

	cmp	QWORD PTR ptr$[rsp], 0
	je	SHORT $LN1@krealloc

; 307  : 		/* here we can check the size difference
; 308  : 		* of new_size and old size from internal
; 309  : 		* data structure of kmalloc */
; 310  : 		memcpy(result, ptr, new_size);

	mov	eax, DWORD PTR new_size$[rsp]
	mov	r8d, eax
	mov	rdx, QWORD PTR ptr$[rsp]
	mov	rcx, QWORD PTR result$[rsp]
	call	memcpy
$LN1@krealloc:

; 311  : 	}
; 312  : 
; 313  : 	kfree(ptr);

	mov	rcx, QWORD PTR ptr$[rsp]
	call	kfree

; 314  : 	return result;

	mov	rax, QWORD PTR result$[rsp]

; 315  : }

	add	rsp, 56					; 00000038H
	ret	0
krealloc ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
meta$ = 32
ret$ = 40
meta_addr$1 = 48
addr$2 = 56
size$ = 80
kmalloc	PROC

; 174  : void* kmalloc(unsigned int size) {

$LN13:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 72					; 00000048H

; 175  : 	meta_data_t *meta = first_block;

	mov	rax, QWORD PTR first_block
	mov	QWORD PTR meta$[rsp], rax

; 176  : 	uint8_t* ret = 0;

	mov	QWORD PTR ret$[rsp], 0
$LN10@kmalloc:

; 177  : 
; 178  : 	/*if ((size % 2) != 0) 
; 179  : 		size = next_power_of_two(size);*/
; 180  : 
; 181  : 	/* now search begins */
; 182  : 	while (meta){

	cmp	QWORD PTR meta$[rsp], 0
	je	$LN9@kmalloc

; 183  : 		if (meta->magic == MAGIC_FREE) {

	mov	rax, QWORD PTR meta$[rsp]
	cmp	DWORD PTR [rax], 86056995		; 05212023H
	jne	$LN8@kmalloc

; 184  : 			if (meta->size > size) {

	mov	rax, QWORD PTR meta$[rsp]
	mov	ecx, DWORD PTR size$[rsp]
	cmp	DWORD PTR [rax+4], ecx
	jbe	SHORT $LN7@kmalloc

; 185  : 				if (au_split_block(meta, size)){

	mov	eax, DWORD PTR size$[rsp]
	mov	edx, eax
	mov	rcx, QWORD PTR meta$[rsp]
	call	?au_split_block@@YAHPEAU_meta_data_@@_K@Z ; au_split_block
	test	eax, eax
	je	SHORT $LN6@kmalloc

; 186  : 					meta->magic = MAGIC_USED;

	mov	rax, QWORD PTR meta$[rsp]
	mov	DWORD PTR [rax], 369500162		; 16062002H

; 187  : 					uint8_t* meta_addr = (uint8_t*)meta;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR meta_addr$1[rsp], rax

; 188  : 					ret = ((uint8_t*)meta_addr + sizeof(meta_data_t));

	mov	rax, QWORD PTR meta_addr$1[rsp]
	add	rax, 24
	mov	QWORD PTR ret$[rsp], rax

; 189  : 					break;

	jmp	SHORT $LN9@kmalloc
	jmp	SHORT $LN5@kmalloc
$LN6@kmalloc:

; 190  : 				}
; 191  : 				else if (au_split_block(meta, size) == -1)

	mov	eax, DWORD PTR size$[rsp]
	mov	edx, eax
	mov	rcx, QWORD PTR meta$[rsp]
	call	?au_split_block@@YAHPEAU_meta_data_@@_K@Z ; au_split_block
	cmp	eax, -1
	jne	SHORT $LN4@kmalloc

; 192  : 					break;

	jmp	SHORT $LN9@kmalloc
$LN4@kmalloc:
$LN5@kmalloc:
$LN7@kmalloc:

; 193  : 			}
; 194  : 
; 195  : 			if (meta->size == size) {

	mov	rax, QWORD PTR meta$[rsp]
	mov	ecx, DWORD PTR size$[rsp]
	cmp	DWORD PTR [rax+4], ecx
	jne	SHORT $LN3@kmalloc

; 196  : 				meta->magic = MAGIC_USED;

	mov	rax, QWORD PTR meta$[rsp]
	mov	DWORD PTR [rax], 369500162		; 16062002H

; 197  : 				uint8_t* addr = (uint8_t*)meta;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR addr$2[rsp], rax

; 198  : 				ret = ((uint8_t*)addr + sizeof(meta_data_t));

	mov	rax, QWORD PTR addr$2[rsp]
	add	rax, 24
	mov	QWORD PTR ret$[rsp], rax

; 199  : 				break;

	jmp	SHORT $LN9@kmalloc
$LN3@kmalloc:
$LN8@kmalloc:

; 200  : 			}
; 201  : 		}
; 202  : 
; 203  : 		meta = meta->next;

	mov	rax, QWORD PTR meta$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR meta$[rsp], rax

; 204  : 	}

	jmp	$LN10@kmalloc
$LN9@kmalloc:

; 205  : 
; 206  : 	if (ret) {

	cmp	QWORD PTR ret$[rsp], 0
	je	SHORT $LN2@kmalloc

; 207  : 		return ret;

	mov	rax, QWORD PTR ret$[rsp]
	jmp	SHORT $LN11@kmalloc

; 208  : 	}
; 209  : 	else{

	jmp	SHORT $LN1@kmalloc
$LN2@kmalloc:

; 210  : 		au_expand_kmalloc(size);

	mov	eax, DWORD PTR size$[rsp]
	mov	ecx, eax
	call	?au_expand_kmalloc@@YAX_K@Z		; au_expand_kmalloc
$LN1@kmalloc:

; 211  : 
; 212  : 	}
; 213  : 	return kmalloc(size);

	mov	ecx, DWORD PTR size$[rsp]
	call	kmalloc
$LN11@kmalloc:

; 214  : }

	add	rsp, 72					; 00000048H
	ret	0
kmalloc	ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\kmalloc.cpp
_TEXT	SEGMENT
meta$ = 32
page$ = 40
desc_addr$ = 48
AuHeapInitialize PROC

; 53   : void AuHeapInitialize() {

$LN3:
	sub	rsp, 72					; 00000048H

; 54   : 	last_block = NULL;

	mov	QWORD PTR last_block, 0

; 55   : 	first_block = NULL;

	mov	QWORD PTR first_block, 0

; 56   : 	last_mark = 0;

	mov	QWORD PTR ?last_mark@@3_KA, 0		; last_mark

; 57   : 	_debug_on = false;

	mov	BYTE PTR ?_debug_on@@3_NA, 0		; _debug_on

; 58   : 	void* page = au_request_page(1);

	mov	ecx, 1
	call	?au_request_page@@YAPEAXH@Z		; au_request_page
	mov	QWORD PTR page$[rsp], rax

; 59   : 	memset(page, 0, (1 * 4096));

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR page$[rsp]
	call	memset

; 60   : 	/* setup the first meta data block */
; 61   : 	uint8_t* desc_addr = (uint8_t*)page;

	mov	rax, QWORD PTR page$[rsp]
	mov	QWORD PTR desc_addr$[rsp], rax

; 62   : 	meta_data_t *meta = (meta_data_t*)desc_addr;

	mov	rax, QWORD PTR desc_addr$[rsp]
	mov	QWORD PTR meta$[rsp], rax

; 63   : 	meta->next = NULL;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+8], 0

; 64   : 	meta->prev = NULL;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR [rax+16], 0

; 65   : 	meta->magic = MAGIC_FREE;

	mov	rax, QWORD PTR meta$[rsp]
	mov	DWORD PTR [rax], 86056995		; 05212023H

; 66   : 
; 67   : 	/* meta->size holds only the usable area size for user */
; 68   : 	meta->size = (1 * 4096) - sizeof(meta_data_t);

	mov	rax, QWORD PTR meta$[rsp]
	mov	DWORD PTR [rax+4], 4072			; 00000fe8H

; 69   : 	first_block = meta;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR first_block, rax

; 70   : 	last_block = meta;

	mov	rax, QWORD PTR meta$[rsp]
	mov	QWORD PTR last_block, rax

; 71   : 	
; 72   : 	last_mark = ((uint64_t)page + (meta->size + sizeof(meta_data_t)));

	mov	rax, QWORD PTR meta$[rsp]
	movsxd	rax, DWORD PTR [rax+4]
	mov	rcx, QWORD PTR page$[rsp]
	lea	rax, QWORD PTR [rcx+rax+24]
	mov	QWORD PTR ?last_mark@@3_KA, rax		; last_mark

; 73   : }

	add	rsp, 72					; 00000048H
	ret	0
AuHeapInitialize ENDP
_TEXT	ENDS
END
