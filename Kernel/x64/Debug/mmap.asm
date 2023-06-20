; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3364	DB	'mmap: len -> %d, fd -> %d, off -> %d ', 0aH, 00H
	ORG $+1
$SG3374	DB	'/', 00H
	ORG $+6
$SG3377	DB	'mmap: file_block_start -> %x ', 0aH, 00H
CONST	ENDS
PUBLIC	?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z		; CreateMemMapping
PUBLIC	?UnmapMemMapping@@YAXPEAX_K@Z			; UnmapMemMapping
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuMapPage:PROC
EXTRN	AuGetFreePage:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeReadBlock:PROC
EXTRN	AuVFSGetBlockFor:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	AuTextOut:PROC
EXTRN	x64_cli:PROC
pdata	SEGMENT
$pdata$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z DD imagerel $LN16
	DD	imagerel $LN16+565
	DD	imagerel $unwind$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z
$pdata$?UnmapMemMapping@@YAXPEAX_K@Z DD imagerel $LN9
	DD	imagerel $LN9+296
	DD	imagerel $unwind$?UnmapMemMapping@@YAXPEAX_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z DD 011801H
	DD	0e218H
$unwind$?UnmapMemMapping@@YAXPEAX_K@Z DD 010e01H
	DD	0a20eH
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
i$1 = 32
page$2 = 40
tv69 = 48
tv71 = 56
addr$ = 64
phys$3 = 72
address$ = 96
len$ = 104
?UnmapMemMapping@@YAXPEAX_K@Z PROC			; UnmapMemMapping

; 101  : void UnmapMemMapping(void* address, size_t len) {

$LN9:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 102  : 	x64_cli();

	call	x64_cli

; 103  : 	if (!len)

	cmp	QWORD PTR len$[rsp], 0
	jne	SHORT $LN4@UnmapMemMa

; 104  : 		return;

	jmp	$LN5@UnmapMemMa
$LN4@UnmapMemMa:

; 105  : 
; 106  : 	len = PAGE_ALIGN(len); //simply align the length

	mov	rax, QWORD PTR len$[rsp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN7@UnmapMemMa
	mov	rax, QWORD PTR len$[rsp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv69[rsp], rax
	jmp	SHORT $LN8@UnmapMemMa
$LN7@UnmapMemMa:
	mov	rax, QWORD PTR len$[rsp]
	mov	QWORD PTR tv69[rsp], rax
$LN8@UnmapMemMa:
	mov	rax, QWORD PTR tv69[rsp]
	mov	QWORD PTR len$[rsp], rax

; 107  : 	uint64_t addr = (uint64_t)address;

	mov	rax, QWORD PTR address$[rsp]
	mov	QWORD PTR addr$[rsp], rax

; 108  : 
; 109  : 	for (int i = 0; i < len / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@UnmapMemMa
$LN2@UnmapMemMa:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@UnmapMemMa:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv71[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR len$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv71[rsp]
	cmp	rcx, rax
	jae	$LN1@UnmapMemMa

; 110  : 		AuVPage* page = AuVmmngrGetPage(addr + i * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 2
	mov	dl, 2
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR page$2[rsp], rax

; 111  : 		uint64_t phys = page->bits.page << PAGE_SHIFT;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 12
	and	rax, 268435455				; 0fffffffH
	shl	rax, 12
	mov	QWORD PTR phys$3[rsp], rax

; 112  : 		AuPmmngrFree((void*)phys);

	mov	rcx, QWORD PTR phys$3[rsp]
	call	AuPmmngrFree

; 113  : 		page->bits.page = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rcx, -1099511623681			; ffffff0000000fffH
	mov	rax, QWORD PTR [rax]
	and	rax, rcx
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 114  : 		page->bits.present = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -2
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 115  : 	}

	jmp	$LN2@UnmapMemMa
$LN1@UnmapMemMa:
$LN5@UnmapMemMa:

; 116  : 
; 117  : }

	add	rsp, 88					; 00000058H
	ret	0
?UnmapMemMapping@@YAXPEAX_K@Z ENDP			; UnmapMemMapping
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
i$1 = 32
file$ = 40
fsys$ = 48
lookup_addr$ = 56
file_block_start$2 = 64
tv85 = 72
phys$3 = 80
curr_thr$ = 88
proc$ = 96
tv135 = 104
address$ = 128
len$ = 136
prot$ = 144
flags$ = 152
fd$ = 160
offset$ = 168
?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z PROC		; CreateMemMapping

; 48   : 	uint64_t offset) {

$LN16:
	mov	DWORD PTR [rsp+32], r9d
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 120				; 00000078H

; 49   : 	x64_cli();

	call	x64_cli

; 50   : 
; 51   : 	if (!len)

	cmp	QWORD PTR len$[rsp], 0
	jne	SHORT $LN11@CreateMemM

; 52   : 		return 0;

	xor	eax, eax
	jmp	$LN12@CreateMemM
$LN11@CreateMemM:

; 53   : 
; 54   : 	/* for now, memory mapping doesn't support lazy loading 
; 55   : 	 * so everything works at pre-paging */
; 56   : 
; 57   : 	AuThread* curr_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR curr_thr$[rsp], rax

; 58   : 	AuProcess* proc = AuProcessFindThread(curr_thr);

	mov	rcx, QWORD PTR curr_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 59   : 	AuVFSNode *file = NULL;

	mov	QWORD PTR file$[rsp], 0

; 60   : 	AuVFSNode* fsys = NULL;

	mov	QWORD PTR fsys$[rsp], 0

; 61   : 	AuTextOut("mmap: len -> %d, fd -> %d, off -> %d \n", len, fd, offset);

	mov	r9, QWORD PTR offset$[rsp]
	mov	r8d, DWORD PTR fd$[rsp]
	mov	rdx, QWORD PTR len$[rsp]
	lea	rcx, OFFSET FLAT:$SG3364
	call	AuTextOut

; 62   : 	if (fd != -1) 

	cmp	DWORD PTR fd$[rsp], -1
	je	SHORT $LN10@CreateMemM

; 63   : 		file = proc->fds[fd];

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+543]
	mov	QWORD PTR file$[rsp], rax
$LN10@CreateMemM:

; 64   : 	
; 65   : 	size_t lookup_addr = NULL;

	mov	QWORD PTR lookup_addr$[rsp], 0

; 66   : 	if (!address)

	cmp	QWORD PTR address$[rsp], 0
	jne	SHORT $LN9@CreateMemM

; 67   : 		lookup_addr = (size_t)AuGetFreePage(true, (void*)PROCESS_MMAP_ADDRESS);

	mov	edx, -1073741824			; ffffffffc0000000H
	mov	cl, 1
	call	AuGetFreePage
	mov	QWORD PTR lookup_addr$[rsp], rax

; 68   : 	else

	jmp	SHORT $LN8@CreateMemM
$LN9@CreateMemM:

; 69   : 		lookup_addr = (size_t)address;

	mov	rax, QWORD PTR address$[rsp]
	mov	QWORD PTR lookup_addr$[rsp], rax
$LN8@CreateMemM:

; 70   : 
; 71   : 	len = PAGE_ALIGN(len); //simply align the length

	mov	rax, QWORD PTR len$[rsp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN14@CreateMemM
	mov	rax, QWORD PTR len$[rsp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv85[rsp], rax
	jmp	SHORT $LN15@CreateMemM
$LN14@CreateMemM:
	mov	rax, QWORD PTR len$[rsp]
	mov	QWORD PTR tv85[rsp], rax
$LN15@CreateMemM:
	mov	rax, QWORD PTR tv85[rsp]
	mov	QWORD PTR len$[rsp], rax

; 72   : 
; 73   : 	if (file) {

	cmp	QWORD PTR file$[rsp], 0
	je	SHORT $LN7@CreateMemM

; 74   : 		uint64_t file_block_start = 0;

	mov	QWORD PTR file_block_start$2[rsp], 0

; 75   : 		fsys = AuVFSFind("/");

	lea	rcx, OFFSET FLAT:$SG3374
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 76   : 		if (!fsys && fd != -1)

	cmp	QWORD PTR fsys$[rsp], 0
	jne	SHORT $LN6@CreateMemM
	cmp	DWORD PTR fd$[rsp], -1
	je	SHORT $LN6@CreateMemM

; 77   : 			return 0;

	xor	eax, eax
	jmp	$LN12@CreateMemM
$LN6@CreateMemM:

; 78   : 		if (!(file->flags & FS_FLAG_DEVICE)) {

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, BYTE PTR [rax+61]
	and	eax, 8
	test	eax, eax
	jne	SHORT $LN5@CreateMemM

; 79   : 			file_block_start = AuVFSGetBlockFor(fsys, file, offset);

	mov	r8, QWORD PTR offset$[rsp]
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSGetBlockFor
	mov	QWORD PTR file_block_start$2[rsp], rax

; 80   : 			AuTextOut("mmap: file_block_start -> %x \n", file_block_start);

	mov	rdx, QWORD PTR file_block_start$2[rsp]
	lea	rcx, OFFSET FLAT:$SG3377
	call	AuTextOut

; 81   : 			file->current = file_block_start;

	mov	rax, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR file_block_start$2[rsp]
	mov	QWORD PTR [rax+53], rcx
$LN5@CreateMemM:
$LN7@CreateMemM:

; 82   : 		}
; 83   : 	}
; 84   : 
; 85   : 	for (int i = 0; i < len / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@CreateMemM
$LN3@CreateMemM:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@CreateMemM:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv135[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR len$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv135[rsp]
	cmp	rcx, rax
	jae	SHORT $LN2@CreateMemM

; 86   : 		uint64_t phys = (uint64_t)AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR phys$3[rsp], rax

; 87   : 		if (file)

	cmp	QWORD PTR file$[rsp], 0
	je	SHORT $LN1@CreateMemM

; 88   : 			AuVFSNodeReadBlock(fsys, file, (uint64_t*)phys);

	mov	r8, QWORD PTR phys$3[rsp]
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock
$LN1@CreateMemM:

; 89   : 		AuMapPage(phys, lookup_addr + i * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR lookup_addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 4
	mov	rdx, rax
	mov	rcx, QWORD PTR phys$3[rsp]
	call	AuMapPage

; 90   : 	}

	jmp	SHORT $LN3@CreateMemM
$LN2@CreateMemM:

; 91   : 
; 92   : 	return (void*)lookup_addr;

	mov	rax, QWORD PTR lookup_addr$[rsp]
$LN12@CreateMemM:

; 93   : }

	add	rsp, 120				; 00000078H
	ret	0
?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z ENDP		; CreateMemMapping
_TEXT	ENDS
END
