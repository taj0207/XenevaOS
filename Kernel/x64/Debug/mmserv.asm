; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

msvcjmc	SEGMENT
__DD7359F7_mmserv@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?CreateSharedMem@@YAHG_KE@Z			; CreateSharedMem
PUBLIC	?ObtainSharedMem@@YAPEAXGPEAXH@Z		; ObtainSharedMem
PUBLIC	?UnmapSharedMem@@YAXG@Z				; UnmapSharedMem
PUBLIC	?GetProcessHeapMem@@YA_K_K@Z			; GetProcessHeapMem
PUBLIC	?ProcessHeapUnmap@@YAHPEAX_K@Z			; ProcessHeapUnmap
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_0CC@MLFDOPFJ@Returning?5error?5heap?5mem?5?9?$DO?5?$CFd?5@ ; `string'
PUBLIC	??_C@_0BE@CEKJJHAF@Failed?5to?5map?5?$CFx?5?$AN?6@ ; `string'
PUBLIC	??_C@_0CE@CHBJELCJ@Returning?5error?5heap?5unmap?5?9?$DO?5?$CF@ ; `string'
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindSubThread
EXTRN	?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z:PROC	; AuCreateSHM
EXTRN	?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z:PROC ; AuSHMObtainMem
EXTRN	?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z:PROC		; AuSHMUnmap
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuMapPage:PROC
EXTRN	AuGetFreePage:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	AuTextOut:PROC
EXTRN	x64_cli:PROC
EXTRN	SeTextOut:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$?CreateSharedMem@@YAHG_KE@Z DD imagerel $LN6
	DD	imagerel $LN6+152
	DD	imagerel $unwind$?CreateSharedMem@@YAHG_KE@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?ObtainSharedMem@@YAPEAXGPEAXH@Z DD imagerel $LN6
	DD	imagerel $LN6+133
	DD	imagerel $unwind$?ObtainSharedMem@@YAPEAXGPEAXH@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?UnmapSharedMem@@YAXG@Z DD imagerel $LN6
	DD	imagerel $LN6+111
	DD	imagerel $unwind$?UnmapSharedMem@@YAXG@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?GetProcessHeapMem@@YA_K_K@Z DD imagerel $LN13
	DD	imagerel $LN13+470
	DD	imagerel $unwind$?GetProcessHeapMem@@YA_K_K@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?ProcessHeapUnmap@@YAHPEAX_K@Z DD imagerel $LN14
	DD	imagerel $LN14+463
	DD	imagerel $unwind$?ProcessHeapUnmap@@YAHPEAX_K@Z
pdata	ENDS
;	COMDAT ??_C@_0CE@CHBJELCJ@Returning?5error?5heap?5unmap?5?9?$DO?5?$CF@
CONST	SEGMENT
??_C@_0CE@CHBJELCJ@Returning?5error?5heap?5unmap?5?9?$DO?5?$CF@ DB 'Retur'
	DB	'ning error heap unmap -> %d ', 0dH, 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BE@CEKJJHAF@Failed?5to?5map?5?$CFx?5?$AN?6@
CONST	SEGMENT
??_C@_0BE@CEKJJHAF@Failed?5to?5map?5?$CFx?5?$AN?6@ DB 'Failed to map %x ', 0dH
	DB	0aH, 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0CC@MLFDOPFJ@Returning?5error?5heap?5mem?5?9?$DO?5?$CFd?5@
CONST	SEGMENT
??_C@_0CC@MLFDOPFJ@Returning?5error?5heap?5mem?5?9?$DO?5?$CFd?5@ DB 'Retu'
	DB	'rning error heap mem -> %d ', 0dH, 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?ProcessHeapUnmap@@YAHPEAX_K@Z DD 025041701H
	DD	01122317H
	DD	0500b0014H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?GetProcessHeapMem@@YA_K_K@Z DD 025041201H
	DD	010d2312H
	DD	050060012H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?UnmapSharedMem@@YAXG@Z DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?ObtainSharedMem@@YAPEAXGPEAXH@Z DD 025031901H
	DD	0d2142319H
	DD	05010H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?CreateSharedMem@@YAHG_KE@Z DD 025031c01H
	DD	0f217231cH
	DD	05010H
xdata	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Serv\mmserv.cpp
;	COMDAT ?ProcessHeapUnmap@@YAHPEAX_K@Z
_TEXT	SEGMENT
thr$ = 0
proc$ = 8
start_addr$ = 16
i$1 = 24
page_$2 = 32
phys_page$3 = 40
tv82 = 112
tv72 = 112
ptr$ = 144
sz$ = 152
?ProcessHeapUnmap@@YAHPEAX_K@Z PROC			; ProcessHeapUnmap, COMDAT

; 151  : int ProcessHeapUnmap(void* ptr, size_t sz) {

$LN14:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 160				; 000000a0H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__DD7359F7_mmserv@cpp
	call	__CheckForDebuggerJustMyCode

; 152  : 	x64_cli();

	call	x64_cli

; 153  : 
; 154  : 	/* check if size is page aligned */
; 155  : 	if ((sz % PAGE_SIZE) != 0) {

	xor	edx, edx
	mov	rax, QWORD PTR sz$[rbp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN5@ProcessHea

; 156  : 		AuTextOut("Returning error heap unmap -> %d \r\n", sz);

	mov	rdx, QWORD PTR sz$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_0CE@CHBJELCJ@Returning?5error?5heap?5unmap?5?9?$DO?5?$CF@
	call	AuTextOut

; 157  : 		return -1;

	mov	eax, -1
	jmp	$LN1@ProcessHea

; 158  : 		sz = PAGE_ALIGN(sz);

	mov	rax, QWORD PTR sz$[rbp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN12@ProcessHea
	mov	rax, QWORD PTR sz$[rbp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv72[rbp], rax
	jmp	SHORT $LN13@ProcessHea
$LN12@ProcessHea:
	mov	rax, QWORD PTR sz$[rbp]
	mov	QWORD PTR tv72[rbp], rax
$LN13@ProcessHea:
	mov	rax, QWORD PTR tv72[rbp]
	mov	QWORD PTR sz$[rbp], rax
$LN5@ProcessHea:

; 159  : 	}
; 160  : 
; 161  : 
; 162  : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rbp], rax

; 163  : 	if (!thr)

	cmp	QWORD PTR thr$[rbp], 0
	jne	SHORT $LN6@ProcessHea

; 164  : 		return -1;

	mov	eax, -1
	jmp	$LN1@ProcessHea
$LN6@ProcessHea:

; 165  : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rbp], rax

; 166  : 	if (!proc) {

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN7@ProcessHea

; 167  : 		proc = AuProcessFindSubThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rbp], rax

; 168  : 		if (!proc) {

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN8@ProcessHea

; 169  : 			return -1;

	mov	eax, -1
	jmp	$LN1@ProcessHea
$LN8@ProcessHea:
$LN7@ProcessHea:

; 170  : 		}
; 171  : 	}
; 172  : 	
; 173  : 	uint64_t start_addr = (uint64_t)ptr;

	mov	rax, QWORD PTR ptr$[rbp]
	mov	QWORD PTR start_addr$[rbp], rax

; 174  : 	for (int i = 0; i < sz / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rbp], 0
	jmp	SHORT $LN4@ProcessHea
$LN2@ProcessHea:
	mov	eax, DWORD PTR i$1[rbp]
	inc	eax
	mov	DWORD PTR i$1[rbp], eax
$LN4@ProcessHea:
	movsxd	rax, DWORD PTR i$1[rbp]
	mov	QWORD PTR tv82[rbp], rax
	xor	edx, edx
	mov	rax, QWORD PTR sz$[rbp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv82[rbp]
	cmp	rcx, rax
	jae	$LN3@ProcessHea

; 175  : 		AuVPage* page_ = AuVmmngrGetPage(start_addr + static_cast<uint64_t>(i) * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);

	movsxd	rax, DWORD PTR i$1[rbp]
	imul	rax, rax, 4096				; 00001000H
	mov	rcx, QWORD PTR start_addr$[rbp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 2
	mov	dl, 2
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR page_$2[rbp], rax

; 176  : 		if (page_) {

	cmp	QWORD PTR page_$2[rbp], 0
	je	SHORT $LN9@ProcessHea

; 177  : 			uint64_t phys_page = page_->bits.page << PAGE_SHIFT;

	mov	rax, QWORD PTR page_$2[rbp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 12
	and	rax, 268435455				; 0fffffffH
	shl	rax, 12
	mov	QWORD PTR phys_page$3[rbp], rax

; 178  : 			if (phys_page){

	cmp	QWORD PTR phys_page$3[rbp], 0
	je	SHORT $LN10@ProcessHea

; 179  : 				AuPmmngrFree((void*)phys_page);

	mov	rcx, QWORD PTR phys_page$3[rbp]
	call	AuPmmngrFree

; 180  : 				//page_->raw = 0;
; 181  : 				page_->bits.present = 0;

	mov	rax, QWORD PTR page_$2[rbp]
	mov	rax, QWORD PTR [rax]
	and	rax, -2
	mov	rcx, QWORD PTR page_$2[rbp]
	mov	QWORD PTR [rcx], rax

; 182  : 				page_->bits.page = 0;

	mov	rax, QWORD PTR page_$2[rbp]
	mov	rcx, -1099511623681			; ffffff0000000fffH
	mov	rax, QWORD PTR [rax]
	and	rax, rcx
	mov	rcx, QWORD PTR page_$2[rbp]
	mov	QWORD PTR [rcx], rax
$LN10@ProcessHea:
$LN9@ProcessHea:

; 183  : 			}
; 184  : 		}
; 185  : 	}

	jmp	$LN2@ProcessHea
$LN3@ProcessHea:

; 186  : 	/*if (start_addr < proc->proc_mem_heap)*/
; 187  : 	proc->proc_mem_heap = start_addr;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR start_addr$[rbp]
	mov	QWORD PTR [rax+1104], rcx

; 188  : 	return 0;

	xor	eax, eax
$LN1@ProcessHea:

; 189  : }

	lea	rsp, QWORD PTR [rbp+128]
	pop	rbp
	ret	0
?ProcessHeapUnmap@@YAHPEAX_K@Z ENDP			; ProcessHeapUnmap
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Serv\mmserv.cpp
;	COMDAT ?GetProcessHeapMem@@YA_K_K@Z
_TEXT	SEGMENT
thr$ = 0
proc$ = 8
start_addr$ = 16
i$1 = 24
phys$2 = 32
tv86 = 104
tv72 = 104
sz$ = 128
?GetProcessHeapMem@@YA_K_K@Z PROC			; GetProcessHeapMem, COMDAT

; 108  : uint64_t GetProcessHeapMem(size_t sz) {

$LN13:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 144				; 00000090H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__DD7359F7_mmserv@cpp
	call	__CheckForDebuggerJustMyCode

; 109  : 	x64_cli();

	call	x64_cli

; 110  : 	/* check if size is page aligned */
; 111  : 	if ((sz % PAGE_SIZE) != 0){

	xor	edx, edx
	mov	rax, QWORD PTR sz$[rbp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN5@GetProcess

; 112  : 		AuTextOut("Returning error heap mem -> %d \r\n", sz);

	mov	rdx, QWORD PTR sz$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_0CC@MLFDOPFJ@Returning?5error?5heap?5mem?5?9?$DO?5?$CFd?5@
	call	AuTextOut

; 113  : 		return -1;

	mov	rax, -1
	jmp	$LN1@GetProcess

; 114  : 		sz = PAGE_ALIGN(sz);

	mov	rax, QWORD PTR sz$[rbp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN11@GetProcess
	mov	rax, QWORD PTR sz$[rbp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv72[rbp], rax
	jmp	SHORT $LN12@GetProcess
$LN11@GetProcess:
	mov	rax, QWORD PTR sz$[rbp]
	mov	QWORD PTR tv72[rbp], rax
$LN12@GetProcess:
	mov	rax, QWORD PTR tv72[rbp]
	mov	QWORD PTR sz$[rbp], rax
$LN5@GetProcess:

; 115  : 	}
; 116  : 	
; 117  : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rbp], rax

; 118  : 	if (!thr)

	cmp	QWORD PTR thr$[rbp], 0
	jne	SHORT $LN6@GetProcess

; 119  : 		return -1;

	mov	rax, -1
	jmp	$LN1@GetProcess
$LN6@GetProcess:

; 120  : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rbp], rax

; 121  : 	if (!proc){

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN7@GetProcess

; 122  : 		proc = AuProcessFindSubThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rbp], rax

; 123  : 		if (!proc) {

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN8@GetProcess

; 124  : 			return -1;

	mov	rax, -1
	jmp	$LN1@GetProcess
$LN8@GetProcess:
$LN7@GetProcess:

; 125  : 		}
; 126  : 	}
; 127  : 
; 128  : 	uint64_t start_addr = (uint64_t)AuGetFreePage(false, (void*)proc->proc_mem_heap);

	mov	rax, QWORD PTR proc$[rbp]
	mov	rdx, QWORD PTR [rax+1104]
	xor	ecx, ecx
	call	AuGetFreePage
	mov	QWORD PTR start_addr$[rbp], rax

; 129  : 
; 130  : 	for (int i = 0; i < sz / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rbp], 0
	jmp	SHORT $LN4@GetProcess
$LN2@GetProcess:
	mov	eax, DWORD PTR i$1[rbp]
	inc	eax
	mov	DWORD PTR i$1[rbp], eax
$LN4@GetProcess:
	movsxd	rax, DWORD PTR i$1[rbp]
	mov	QWORD PTR tv86[rbp], rax
	xor	edx, edx
	mov	rax, QWORD PTR sz$[rbp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv86[rbp]
	cmp	rcx, rax
	jae	SHORT $LN3@GetProcess

; 131  : 		/*AuVPage* vpage = AuVmmngrGetPage(start_addr + i * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);
; 132  : 		if (vpage->bits.page != 0)
; 133  : 			continue;*/
; 134  : 		void* phys = AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR phys$2[rbp], rax

; 135  : 		if (!AuMapPage((size_t)phys, start_addr + static_cast<uint64_t>(i) * PAGE_SIZE, X86_64_PAGING_USER)) {

	movsxd	rax, DWORD PTR i$1[rbp]
	imul	rax, rax, 4096				; 00001000H
	mov	rcx, QWORD PTR start_addr$[rbp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 4
	mov	rdx, rax
	mov	rcx, QWORD PTR phys$2[rbp]
	call	AuMapPage
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN9@GetProcess

; 136  : 			SeTextOut("Failed to map %x \r\n", (start_addr + static_cast<uint64_t>(i) * PAGE_SIZE));

	movsxd	rax, DWORD PTR i$1[rbp]
	imul	rax, rax, 4096				; 00001000H
	mov	rcx, QWORD PTR start_addr$[rbp]
	add	rcx, rax
	mov	rax, rcx
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:??_C@_0BE@CEKJJHAF@Failed?5to?5map?5?$CFx?5?$AN?6@
	call	SeTextOut
$LN9@GetProcess:

; 137  : 		}
; 138  : 	}

	jmp	$LN2@GetProcess
$LN3@GetProcess:

; 139  : 	//SeTextOut("GetProcessHeapMem: %x %d bytes Mapped \r\n", start_addr, sz);
; 140  : 	proc->proc_mem_heap += sz;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rax, QWORD PTR [rax+1104]
	add	rax, QWORD PTR sz$[rbp]
	mov	rcx, QWORD PTR proc$[rbp]
	mov	QWORD PTR [rcx+1104], rax

; 141  : 	proc->proc_heapmem_len += sz;

	mov	rax, QWORD PTR proc$[rbp]
	mov	rax, QWORD PTR [rax+1112]
	add	rax, QWORD PTR sz$[rbp]
	mov	rcx, QWORD PTR proc$[rbp]
	mov	QWORD PTR [rcx+1112], rax

; 142  : 	return start_addr;

	mov	rax, QWORD PTR start_addr$[rbp]
$LN1@GetProcess:

; 143  : }

	lea	rsp, QWORD PTR [rbp+112]
	pop	rbp
	ret	0
?GetProcessHeapMem@@YA_K_K@Z ENDP			; GetProcessHeapMem
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Serv\mmserv.cpp
;	COMDAT ?UnmapSharedMem@@YAXG@Z
_TEXT	SEGMENT
thr$ = 0
proc$ = 8
key$ = 96
?UnmapSharedMem@@YAXG@Z PROC				; UnmapSharedMem, COMDAT

; 89   : void UnmapSharedMem(uint16_t key) {

$LN6:
	mov	WORD PTR [rsp+8], cx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__DD7359F7_mmserv@cpp
	call	__CheckForDebuggerJustMyCode

; 90   : 	x64_cli();

	call	x64_cli

; 91   : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rbp], rax

; 92   : 	if (!thr)  //some serious memory problem

	cmp	QWORD PTR thr$[rbp], 0
	jne	SHORT $LN2@UnmapShare

; 93   : 		return;

	jmp	SHORT $LN1@UnmapShare
$LN2@UnmapShare:

; 94   : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rbp], rax

; 95   : 	if (!proc) {

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN3@UnmapShare

; 96   : 		proc = AuProcessFindSubThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rbp], rax

; 97   : 		if (!proc)

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN4@UnmapShare

; 98   : 			return;

	jmp	SHORT $LN1@UnmapShare
$LN4@UnmapShare:
$LN3@UnmapShare:

; 99   : 	}
; 100  : 	AuSHMUnmap(key, proc);

	mov	rdx, QWORD PTR proc$[rbp]
	movzx	ecx, WORD PTR key$[rbp]
	call	?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z	; AuSHMUnmap
$LN1@UnmapShare:

; 101  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?UnmapSharedMem@@YAXG@Z ENDP				; UnmapSharedMem
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Serv\mmserv.cpp
;	COMDAT ?ObtainSharedMem@@YAPEAXGPEAXH@Z
_TEXT	SEGMENT
thr$ = 0
proc$ = 8
id$ = 96
shmaddr$ = 104
shmflg$ = 112
?ObtainSharedMem@@YAPEAXGPEAXH@Z PROC			; ObtainSharedMem, COMDAT

; 71   : void* ObtainSharedMem(uint16_t id, void* shmaddr, int shmflg) {

$LN6:
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	WORD PTR [rsp+8], cx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__DD7359F7_mmserv@cpp
	call	__CheckForDebuggerJustMyCode

; 72   : 	x64_cli();

	call	x64_cli

; 73   : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rbp], rax

; 74   : 	if (!thr)

	cmp	QWORD PTR thr$[rbp], 0
	jne	SHORT $LN2@ObtainShar

; 75   : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@ObtainShar
$LN2@ObtainShar:

; 76   : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rbp], rax

; 77   : 	if (!proc) {

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN3@ObtainShar

; 78   : 		proc = AuProcessFindSubThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rbp], rax

; 79   : 		if (!proc)

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN4@ObtainShar

; 80   : 			return NULL;

	xor	eax, eax
	jmp	SHORT $LN1@ObtainShar
$LN4@ObtainShar:
$LN3@ObtainShar:

; 81   : 	}
; 82   : 	return AuSHMObtainMem(proc,id, shmaddr, shmflg);

	mov	r9d, DWORD PTR shmflg$[rbp]
	mov	r8, QWORD PTR shmaddr$[rbp]
	movzx	edx, WORD PTR id$[rbp]
	mov	rcx, QWORD PTR proc$[rbp]
	call	?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z ; AuSHMObtainMem
$LN1@ObtainShar:

; 83   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?ObtainSharedMem@@YAPEAXGPEAXH@Z ENDP			; ObtainSharedMem
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Serv\mmserv.cpp
;	COMDAT ?CreateSharedMem@@YAHG_KE@Z
_TEXT	SEGMENT
thr$ = 0
proc$ = 8
id$ = 16
key$ = 112
sz$ = 120
flags$ = 128
?CreateSharedMem@@YAHG_KE@Z PROC			; CreateSharedMem, COMDAT

; 49   : int CreateSharedMem(uint16_t key, size_t sz, uint8_t flags){

$LN6:
	mov	BYTE PTR [rsp+24], r8b
	mov	QWORD PTR [rsp+16], rdx
	mov	WORD PTR [rsp+8], cx
	push	rbp
	sub	rsp, 128				; 00000080H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__DD7359F7_mmserv@cpp
	call	__CheckForDebuggerJustMyCode

; 50   : 	x64_cli();

	call	x64_cli

; 51   : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rbp], rax

; 52   : 	if (!thr)

	cmp	QWORD PTR thr$[rbp], 0
	jne	SHORT $LN2@CreateShar

; 53   : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN1@CreateShar
$LN2@CreateShar:

; 54   : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rbp], rax

; 55   : 	if (!proc){

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN3@CreateShar

; 56   : 		proc = AuProcessFindSubThread(thr);

	mov	rcx, QWORD PTR thr$[rbp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rbp], rax

; 57   : 		if (!proc){

	cmp	QWORD PTR proc$[rbp], 0
	jne	SHORT $LN4@CreateShar

; 58   : 			return -1;

	mov	eax, -1
	jmp	SHORT $LN1@CreateShar
$LN4@CreateShar:
$LN3@CreateShar:

; 59   : 		}
; 60   : 	}
; 61   : 	int id = AuCreateSHM(proc, key, sz, flags);

	movzx	r9d, BYTE PTR flags$[rbp]
	mov	r8, QWORD PTR sz$[rbp]
	movzx	edx, WORD PTR key$[rbp]
	mov	rcx, QWORD PTR proc$[rbp]
	call	?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z	; AuCreateSHM
	mov	DWORD PTR id$[rbp], eax

; 62   : 	return id;

	mov	eax, DWORD PTR id$[rbp]
$LN1@CreateShar:

; 63   : }

	lea	rsp, QWORD PTR [rbp+96]
	pop	rbp
	ret	0
?CreateSharedMem@@YAHG_KE@Z ENDP			; CreateSharedMem
_TEXT	ENDS
END
