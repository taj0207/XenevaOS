; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?proc_first@@3PEAU_au_proc_@@EA			; proc_first
PUBLIC	?proc_last@@3PEAU_au_proc_@@EA			; proc_last
PUBLIC	?root_proc@@3PEAU_au_proc_@@EA			; root_proc
PUBLIC	?process_mutex@@3PEAU_mutex_@@EA		; process_mutex
_BSS	SEGMENT
?proc_first@@3PEAU_au_proc_@@EA DQ 01H DUP (?)		; proc_first
?proc_last@@3PEAU_au_proc_@@EA DQ 01H DUP (?)		; proc_last
?root_proc@@3PEAU_au_proc_@@EA DQ 01H DUP (?)		; root_proc
?process_mutex@@3PEAU_mutex_@@EA DQ 01H DUP (?)		; process_mutex
_BSS	ENDS
_DATA	SEGMENT
pid	DD	01H
_DATA	ENDS
CONST	SEGMENT
$SG4102	DB	'Closing file -> %s , address -> %x ', 0dH, 0aH, 00H
	ORG $+2
$SG4013	DB	'_root', 00H
	ORG $+2
$SG4040	DB	'-about', 00H
	ORG $+1
$SG4045	DB	'/init.exe', 00H
	ORG $+6
$SG4089	DB	'[aurora]: cannot exit root process ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?AuAddProcess@@YAXPEAU_au_proc_@@0@Z		; AuAddProcess
PUBLIC	?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z		; AuRemoveProcess
PUBLIC	?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z		; AuProcessFindPID
PUBLIC	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
PUBLIC	?CreateUserStack@@YAPEA_KPEA_K@Z		; CreateUserStack
PUBLIC	?AuStartRootProc@@YAXXZ				; AuStartRootProc
PUBLIC	?AuGetRootProcess@@YAPEAU_au_proc_@@XZ		; AuGetRootProcess
PUBLIC	?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z ; AuCreateProcessSlot
PUBLIC	?AuProcessExit@@YAXPEAU_au_proc_@@@Z		; AuProcessExit
PUBLIC	?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z	; AuProcessGetFileDesc
PUBLIC	?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z ; AuProcessWaitForTermination
PUBLIC	?AuProcessGetMutex@@YAPEAU_mutex_@@XZ		; AuProcessGetMutex
PUBLIC	?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z	; AuProcessFindByPID
PUBLIC	?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z ; AuProcessFindByThread
PUBLIC	?AuAllocateProcessID@@YAHXZ			; AuAllocateProcessID
PUBLIC	?AuCreateRootProc@@YAPEAU_au_proc_@@XZ		; AuCreateRootProc
PUBLIC	?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ	; AuGetKillableProcess
PUBLIC	?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z	; AuProcessHeapMemDestroy
EXTRN	initialize_list:PROC
EXTRN	AuSleepThread:PROC
EXTRN	?AuThreadMoveToTrash@@YAXPEAU_au_thread_@@@Z:PROC ; AuThreadMoveToTrash
EXTRN	AuCreateMutex:PROC
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuMapPageEx:PROC
EXTRN	AuCreateVirtualAddressSpace:PROC
EXTRN	strcpy:PROC
EXTRN	strlen:PROC
EXTRN	memset:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	kmalloc_debug_on:PROC
EXTRN	?UnmapMemMapping@@YAXPEAX_K@Z:PROC		; UnmapMemMapping
EXTRN	x64_cli:PROC
EXTRN	x64_force_sched:PROC
EXTRN	SeTextOut:PROC
EXTRN	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z:PROC ; AuLoadExecToProcess
EXTRN	?AuProcessClean@@YAXPEAU_au_proc_@@0@Z:PROC	; AuProcessClean
EXTRN	?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z:PROC	; AuSHMUnmapAll
EXTRN	AuSoundRemoveDSP:PROC
pdata	SEGMENT
$pdata$?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z DD imagerel $LN8
	DD	imagerel $LN8+178
	DD	imagerel $unwind$?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z
$pdata$?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z DD imagerel $LN7
	DD	imagerel $LN7+70
	DD	imagerel $unwind$?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z
$pdata$?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+74
	DD	imagerel $unwind$?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z
$pdata$?CreateUserStack@@YAPEA_KPEA_K@Z DD imagerel $LN6
	DD	imagerel $LN6+146
	DD	imagerel $unwind$?CreateUserStack@@YAPEA_KPEA_K@Z
$pdata$?AuStartRootProc@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+205
	DD	imagerel $unwind$?AuStartRootProc@@YAXXZ
$pdata$?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z DD imagerel $LN6
	DD	imagerel $LN6+340
	DD	imagerel $unwind$?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z
$pdata$?AuProcessExit@@YAXPEAU_au_proc_@@@Z DD imagerel $LN15
	DD	imagerel $LN15+397
	DD	imagerel $unwind$?AuProcessExit@@YAXPEAU_au_proc_@@@Z
$pdata$?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+69
	DD	imagerel $unwind$?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z
$pdata$?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z DD imagerel $LN8
	DD	imagerel $LN8+105
	DD	imagerel $unwind$?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z
$pdata$?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z DD imagerel $LN7
	DD	imagerel $LN7+75
	DD	imagerel $unwind$?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z
$pdata$?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+79
	DD	imagerel $unwind$?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z
$pdata$?AuAllocateProcessID@@YAHXZ DD imagerel $LN3
	DD	imagerel $LN3+37
	DD	imagerel $unwind$?AuAllocateProcessID@@YAHXZ
$pdata$?AuCreateRootProc@@YAPEAU_au_proc_@@XZ DD imagerel $LN6
	DD	imagerel $LN6+316
	DD	imagerel $unwind$?AuCreateRootProc@@YAPEAU_au_proc_@@XZ
$pdata$?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ DD imagerel $LN7
	DD	imagerel $LN7+69
	DD	imagerel $unwind$?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ
$pdata$?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+228
	DD	imagerel $unwind$?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z DD 010e01H
	DD	0420eH
$unwind$?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z DD 010801H
	DD	02208H
$unwind$?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z DD 010901H
	DD	02209H
$unwind$?CreateUserStack@@YAPEA_KPEA_K@Z DD 010901H
	DD	08209H
$unwind$?AuStartRootProc@@YAXXZ DD 010401H
	DD	08204H
$unwind$?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z DD 010e01H
	DD	0820eH
$unwind$?AuProcessExit@@YAXPEAU_au_proc_@@@Z DD 010901H
	DD	08209H
$unwind$?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z DD 010901H
	DD	02209H
$unwind$?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z DD 010d01H
	DD	0620dH
$unwind$?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z DD 010d01H
	DD	0220dH
$unwind$?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z DD 010e01H
	DD	0220eH
$unwind$?AuAllocateProcessID@@YAHXZ DD 010401H
	DD	02204H
$unwind$?AuCreateRootProc@@YAPEAU_au_proc_@@XZ DD 010401H
	DD	08204H
$unwind$?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ DD 010401H
	DD	02204H
$unwind$?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z DD 010901H
	DD	0a209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
page$2 = 40
phys$3 = 48
proc_mem_diff$ = 56
tv67 = 64
proc$ = 96
?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z PROC	; AuProcessHeapMemDestroy

; 350  : void AuProcessHeapMemDestroy(AuProcess* proc) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 351  : 	size_t proc_mem_diff = proc->proc_mem_heap - PROCESS_BREAK_ADDRESS;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1071]
	sub	rax, 805306368				; 30000000H
	mov	QWORD PTR proc_mem_diff$[rsp], rax

; 352  : 	for (int i = 0; i < proc_mem_diff / 4096; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuProcessH
$LN3@AuProcessH:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuProcessH:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv67[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR proc_mem_diff$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv67[rsp]
	cmp	rcx, rax
	jae	$LN2@AuProcessH

; 353  : 		AuVPage* page = AuVmmngrGetPage(PROCESS_BREAK_ADDRESS + i * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	add	eax, 805306368				; 30000000H
	cdqe
	mov	r8b, 2
	mov	dl, 2
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR page$2[rsp], rax

; 354  : 		uint64_t phys = page->bits.page << PAGE_SHIFT;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 12
	and	rax, 268435455				; 0fffffffH
	shl	rax, 12
	mov	QWORD PTR phys$3[rsp], rax

; 355  : 		if (phys) 

	cmp	QWORD PTR phys$3[rsp], 0
	je	SHORT $LN1@AuProcessH

; 356  : 			AuPmmngrFree((void*)phys);

	mov	rcx, QWORD PTR phys$3[rsp]
	call	AuPmmngrFree
$LN1@AuProcessH:

; 357  : 		page->bits.page = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rcx, -1099511623681			; ffffff0000000fffH
	mov	rax, QWORD PTR [rax]
	and	rax, rcx
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 358  : 		page->bits.present = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -2
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 359  : 	}

	jmp	$LN3@AuProcessH
$LN2@AuProcessH:

; 360  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z ENDP	; AuProcessHeapMemDestroy
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ PROC		; AuGetKillableProcess

; 295  : AuProcess* AuGetKillableProcess() {

$LN7:
	sub	rsp, 24

; 296  : 	for (AuProcess* proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuGetKilla
$LN3@AuGetKilla:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuGetKilla:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuGetKilla

; 297  : 		if (proc_->state & PROCESS_STATE_DIED)

	mov	rax, QWORD PTR proc_$1[rsp]
	movzx	eax, BYTE PTR [rax+20]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN1@AuGetKilla

; 298  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuGetKilla
$LN1@AuGetKilla:

; 299  : 	}

	jmp	SHORT $LN3@AuGetKilla
$LN2@AuGetKilla:

; 300  : 
; 301  : 	return NULL;

	xor	eax, eax
$LN5@AuGetKilla:

; 302  : }

	add	rsp, 24
	ret	0
?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ ENDP		; AuGetKillableProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
proc$ = 40
cr3$ = 48
main_thr_stack$ = 56
?AuCreateRootProc@@YAPEAU_au_proc_@@XZ PROC		; AuCreateRootProc

; 190  : AuProcess* AuCreateRootProc() {

$LN6:
	sub	rsp, 72					; 00000048H

; 191  : 	AuProcess *proc = (AuProcess*)kmalloc(sizeof(AuProcess));

	mov	ecx, 1103				; 0000044fH
	call	kmalloc
	mov	QWORD PTR proc$[rsp], rax

; 192  : 	memset(proc, 0, sizeof(AuProcess));

	mov	r8d, 1103				; 0000044fH
	xor	edx, edx
	mov	rcx, QWORD PTR proc$[rsp]
	call	memset

; 193  : 
; 194  : 	proc->proc_id = AuAllocateProcessID();

	call	?AuAllocateProcessID@@YAHXZ		; AuAllocateProcessID
	mov	rcx, QWORD PTR proc$[rsp]
	mov	DWORD PTR [rcx], eax

; 195  : 	memset(proc->name, 0, 16);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	r8d, 16
	xor	edx, edx
	mov	rcx, rax
	call	memset

; 196  : 	strcpy(proc->name, "_root");

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	lea	rdx, OFFSET FLAT:$SG4013
	mov	rcx, rax
	call	strcpy

; 197  : 
; 198  : 	/* create empty virtual address space */
; 199  : 	uint64_t* cr3 = AuCreateVirtualAddressSpace();

	call	AuCreateVirtualAddressSpace
	mov	QWORD PTR cr3$[rsp], rax

; 200  : 	/* create the process main thread stack */
; 201  : 	uint64_t  main_thr_stack = (uint64_t)CreateUserStack(cr3);

	mov	rcx, QWORD PTR cr3$[rsp]
	call	?CreateUserStack@@YAPEA_KPEA_K@Z	; CreateUserStack
	mov	QWORD PTR main_thr_stack$[rsp], rax

; 202  : 	proc->state = PROCESS_STATE_NOT_READY;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 1

; 203  : 	proc->cr3 = cr3;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR cr3$[rsp]
	mov	QWORD PTR [rax+22], rcx

; 204  : 	proc->_main_stack_ = main_thr_stack;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR main_thr_stack$[rsp]
	mov	QWORD PTR [rax+46], rcx

; 205  : 	
; 206  : 	proc->vmareas = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1047], rax

; 207  : 	proc->shmmaps = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1055], rax

; 208  : 	proc->shm_break = USER_SHARED_MEM_START;

	mov	rax, QWORD PTR proc$[rsp]
	mov	ecx, -2147483648			; 80000000H
	mov	QWORD PTR [rax+1063], rcx

; 209  : 	proc->proc_mem_heap = PROCESS_BREAK_ADDRESS;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1071], 805306368		; 30000000H

; 210  : 	proc->proc_mmap_len = 0;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1079], 0

; 211  : 	for (int i = 0; i < FILE_DESC_PER_PROCESS; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuCreateRo
$LN2@AuCreateRo:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuCreateRo:
	cmp	DWORD PTR i$1[rsp], 60			; 0000003cH
	jge	SHORT $LN1@AuCreateRo

; 212  : 		proc->fds[i] = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+rax*8+551], 0
	jmp	SHORT $LN2@AuCreateRo
$LN1@AuCreateRo:

; 213  : 
; 214  : 	/* create the main thread after loading the
; 215  : 	 * image file to process, because just after
; 216  : 	 * creating the thread, scheduler starts
; 217  : 	 * scheduling that thread
; 218  : 	 */
; 219  : 	AuAddProcess(NULL,proc);

	mov	rdx, QWORD PTR proc$[rsp]
	xor	ecx, ecx
	call	?AuAddProcess@@YAXPEAU_au_proc_@@0@Z	; AuAddProcess

; 220  : 	return proc;

	mov	rax, QWORD PTR proc$[rsp]

; 221  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuCreateRootProc@@YAPEAU_au_proc_@@XZ ENDP		; AuCreateRootProc
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
_pid$ = 0
?AuAllocateProcessID@@YAHXZ PROC			; AuAllocateProcessID

; 181  : int AuAllocateProcessID() {

$LN3:
	sub	rsp, 24

; 182  : 	size_t _pid = pid;

	movsxd	rax, DWORD PTR pid
	mov	QWORD PTR _pid$[rsp], rax

; 183  : 	pid = pid + 1;

	mov	eax, DWORD PTR pid
	inc	eax
	mov	DWORD PTR pid, eax

; 184  : 	return _pid;

	mov	eax, DWORD PTR _pid$[rsp]

; 185  : }

	add	rsp, 24
	ret	0
?AuAllocateProcessID@@YAHXZ ENDP			; AuAllocateProcessID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
proc$ = 32
thread$ = 40
?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z PROC ; AuProcessFindByThread

; 121  : AuProcess* AuProcessFindByThread(AuProcess* proc, AuThread* thread) {

$LN7:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 122  : 	for (AuProcess *proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuProcessF
$LN3@AuProcessF:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuProcessF:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuProcessF

; 123  : 		if (proc_->main_thread == thread) {

	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rcx, QWORD PTR thread$[rsp]
	cmp	QWORD PTR [rax+54], rcx
	jne	SHORT $LN1@AuProcessF

; 124  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuProcessF
$LN1@AuProcessF:

; 125  : 		}
; 126  : 	}

	jmp	SHORT $LN3@AuProcessF
$LN2@AuProcessF:

; 127  : 
; 128  : 	return NULL;

	xor	eax, eax
$LN5@AuProcessF:

; 129  : }

	add	rsp, 24
	ret	0
?AuProcessFindByThread@@YAPEAU_au_proc_@@PEAU1@PEAU_au_thread_@@@Z ENDP ; AuProcessFindByThread
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
proc$ = 32
pid$ = 40
?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z PROC	; AuProcessFindByPID

; 108  : AuProcess* AuProcessFindByPID(AuProcess* proc, int pid) {

$LN7:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 109  : 	for (AuProcess *proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuProcessF
$LN3@AuProcessF:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuProcessF:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuProcessF

; 110  : 		if (proc_->proc_id == pid)

	mov	rax, QWORD PTR proc_$1[rsp]
	mov	ecx, DWORD PTR pid$[rsp]
	cmp	DWORD PTR [rax], ecx
	jne	SHORT $LN1@AuProcessF

; 111  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuProcessF
$LN1@AuProcessF:

; 112  : 	}

	jmp	SHORT $LN3@AuProcessF
$LN2@AuProcessF:

; 113  : 	return NULL;

	xor	eax, eax
$LN5@AuProcessF:

; 114  : }

	add	rsp, 24
	ret	0
?AuProcessFindByPID@@YAPEAU_au_proc_@@PEAU1@H@Z ENDP	; AuProcessFindByPID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
?AuProcessGetMutex@@YAPEAU_mutex_@@XZ PROC		; AuProcessGetMutex

; 421  : 	return process_mutex;

	mov	rax, QWORD PTR ?process_mutex@@3PEAU_mutex_@@EA ; process_mutex

; 422  : }

	ret	0
?AuProcessGetMutex@@YAPEAU_mutex_@@XZ ENDP		; AuProcessGetMutex
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
killable$1 = 32
proc$ = 64
pid$ = 72
?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z PROC ; AuProcessWaitForTermination

; 314  : void AuProcessWaitForTermination(AuProcess *proc, int pid) {

$LN8:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H
$LN5@AuProcessW:

; 315  : 	do {
; 316  : 		AuProcess *killable = AuGetKillableProcess();

	call	?AuGetKillableProcess@@YAPEAU_au_proc_@@XZ ; AuGetKillableProcess
	mov	QWORD PTR killable$1[rsp], rax

; 317  : 
; 318  : 		if (killable) {

	cmp	QWORD PTR killable$1[rsp], 0
	je	SHORT $LN2@AuProcessW

; 319  : 			AuProcessClean(0, killable);

	mov	rdx, QWORD PTR killable$1[rsp]
	xor	ecx, ecx
	call	?AuProcessClean@@YAXPEAU_au_proc_@@0@Z	; AuProcessClean

; 320  : 			killable = NULL;

	mov	QWORD PTR killable$1[rsp], 0
$LN2@AuProcessW:

; 321  : 		}
; 322  : 
; 323  : 
; 324  : 		if (!killable){

	cmp	QWORD PTR killable$1[rsp], 0
	jne	SHORT $LN1@AuProcessW

; 325  : 			//AuBlockThread(proc->main_thread);
; 326  : 			AuSleepThread(proc->main_thread, 1000);

	mov	edx, 1000				; 000003e8H
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+54]
	call	AuSleepThread

; 327  : 			proc->state = PROCESS_STATE_SUSPENDED;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 4

; 328  : 			x64_force_sched();

	call	x64_force_sched
$LN1@AuProcessW:

; 329  : 		}
; 330  : 	} while (1);

	xor	eax, eax
	cmp	eax, 1
	jne	SHORT $LN5@AuProcessW

; 331  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z ENDP ; AuProcessWaitForTermination
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 0
proc$ = 32
?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z PROC	; AuProcessGetFileDesc

; 338  : int AuProcessGetFileDesc(AuProcess* proc) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 339  : 	for (int i = 0; i < FILE_DESC_PER_PROCESS; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuProcessG
$LN3@AuProcessG:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuProcessG:
	cmp	DWORD PTR i$1[rsp], 60			; 0000003cH
	jge	SHORT $LN2@AuProcessG

; 340  : 		if (!proc->fds[i])

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	cmp	QWORD PTR [rcx+rax*8+551], 0
	jne	SHORT $LN1@AuProcessG

; 341  : 			return i;

	mov	eax, DWORD PTR i$1[rsp]
	jmp	SHORT $LN5@AuProcessG
$LN1@AuProcessG:

; 342  : 	}

	jmp	SHORT $LN3@AuProcessG
$LN2@AuProcessG:

; 343  : 	return -1;

	mov	eax, -1
$LN5@AuProcessG:

; 344  : }

	add	rsp, 24
	ret	0
?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z ENDP	; AuProcessGetFileDesc
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
i$2 = 36
file$3 = 40
killable$4 = 48
proc$ = 80
?AuProcessExit@@YAXPEAU_au_proc_@@@Z PROC		; AuProcessExit

; 366  : void AuProcessExit(AuProcess* proc) {

$LN15:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 367  : 	x64_cli();

	call	x64_cli

; 368  : 	if (proc == root_proc) {

	mov	rax, QWORD PTR ?root_proc@@3PEAU_au_proc_@@EA ; root_proc
	cmp	QWORD PTR proc$[rsp], rax
	jne	SHORT $LN12@AuProcessE

; 369  : 		SeTextOut("[aurora]: cannot exit root process \r\n");

	lea	rcx, OFFSET FLAT:$SG4089
	call	SeTextOut

; 370  : 		return;

	jmp	$LN13@AuProcessE
$LN12@AuProcessE:

; 371  : 	}
; 372  : 
; 373  : 	kmalloc_debug_on(true);

	mov	cl, 1
	call	kmalloc_debug_on

; 374  : 
; 375  : 	proc->state = PROCESS_STATE_DIED;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 8

; 376  : 
; 377  : 	AuSoundRemoveDSP(proc->main_thread->id);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+54]
	movzx	ecx, WORD PTR [rax+301]
	call	AuSoundRemoveDSP

; 378  : 
; 379  : 	/* mark all the threads as blocked */
; 380  : 	for (int i = 1; i < proc->num_thread - 1; i++) {

	mov	DWORD PTR i$1[rsp], 1
	jmp	SHORT $LN11@AuProcessE
$LN10@AuProcessE:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN11@AuProcessE:
	mov	rax, QWORD PTR proc$[rsp]
	movzx	eax, BYTE PTR [rax+62]
	dec	eax
	cmp	DWORD PTR i$1[rsp], eax
	jge	SHORT $LN9@AuProcessE

; 381  : 		AuThread *killable = proc->threads[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+71]
	mov	QWORD PTR killable$4[rsp], rax

; 382  : 		if (killable)

	cmp	QWORD PTR killable$4[rsp], 0
	je	SHORT $LN8@AuProcessE

; 383  : 			AuThreadMoveToTrash(killable);

	mov	rcx, QWORD PTR killable$4[rsp]
	call	?AuThreadMoveToTrash@@YAXPEAU_au_thread_@@@Z ; AuThreadMoveToTrash
$LN8@AuProcessE:

; 384  : 	}

	jmp	SHORT $LN10@AuProcessE
$LN9@AuProcessE:

; 385  : 
; 386  : 
; 387  : 	/* here we free almost every possible
; 388  : 	 * data, that we can free
; 389  : 	 */
; 390  : 	for (int i = 0; i < FILE_DESC_PER_PROCESS; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN7@AuProcessE
$LN6@AuProcessE:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN7@AuProcessE:
	cmp	DWORD PTR i$2[rsp], 60			; 0000003cH
	jge	SHORT $LN5@AuProcessE

; 391  : 		AuVFSNode *file = proc->fds[i];

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+551]
	mov	QWORD PTR file$3[rsp], rax

; 392  : 		if (file) {

	cmp	QWORD PTR file$3[rsp], 0
	je	SHORT $LN4@AuProcessE

; 393  : 			SeTextOut("Closing file -> %s , address -> %x \r\n", file->filename, file);

	mov	rax, QWORD PTR file$3[rsp]
	mov	r8, QWORD PTR file$3[rsp]
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG4102
	call	SeTextOut

; 394  : 			if (file->flags & FS_FLAG_DEVICE || file->flags & FS_FLAG_FILE_SYSTEM)

	mov	rax, QWORD PTR file$3[rsp]
	movzx	eax, WORD PTR [rax+61]
	and	eax, 8
	test	eax, eax
	jne	SHORT $LN2@AuProcessE
	mov	rax, QWORD PTR file$3[rsp]
	movzx	eax, WORD PTR [rax+61]
	and	eax, 64					; 00000040H
	test	eax, eax
	je	SHORT $LN3@AuProcessE
$LN2@AuProcessE:

; 395  : 				continue;

	jmp	SHORT $LN6@AuProcessE
$LN3@AuProcessE:

; 396  : 			if (file->flags & FS_FLAG_GENERAL)  {

	mov	rax, QWORD PTR file$3[rsp]
	movzx	eax, WORD PTR [rax+61]
	and	eax, 4
	test	eax, eax
	je	SHORT $LN1@AuProcessE

; 397  : 				
; 398  : 				kfree(file);

	mov	rcx, QWORD PTR file$3[rsp]
	call	kfree
$LN1@AuProcessE:
$LN4@AuProcessE:

; 399  : 			}
; 400  : 		}
; 401  : 	}

	jmp	$LN6@AuProcessE
$LN5@AuProcessE:

; 402  : 
; 403  : 	UnmapMemMapping((void*)PROCESS_MMAP_ADDRESS, proc->proc_mmap_len);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rdx, QWORD PTR [rax+1079]
	mov	ecx, -1073741824			; ffffffffc0000000H
	call	?UnmapMemMapping@@YAXPEAX_K@Z		; UnmapMemMapping

; 404  : 
; 405  : 	/*unmap all shared memory mappings */
; 406  : 	AuSHMUnmapAll(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuSHMUnmapAll@@YAXPEAU_au_proc_@@@Z	; AuSHMUnmapAll

; 407  : 
; 408  : 	AuProcessHeapMemDestroy(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuProcessHeapMemDestroy@@YAXPEAU_au_proc_@@@Z ; AuProcessHeapMemDestroy

; 409  : 
; 410  : 	kfree(proc->file);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+1031]
	call	kfree

; 411  : 
; 412  : 	AuThreadMoveToTrash(proc->main_thread);

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+54]
	call	?AuThreadMoveToTrash@@YAXPEAU_au_thread_@@@Z ; AuThreadMoveToTrash

; 413  : 	
; 414  : 	kmalloc_debug_on(false);

	xor	ecx, ecx
	call	kmalloc_debug_on

; 415  : 
; 416  : 	x64_force_sched();

	call	x64_force_sched
$LN13@AuProcessE:

; 417  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuProcessExit@@YAXPEAU_au_proc_@@@Z ENDP		; AuProcessExit
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
proc$ = 40
cr3$ = 48
main_thr_stack$ = 56
parent$ = 80
name$ = 88
?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z PROC ; AuCreateProcessSlot

; 228  : AuProcess* AuCreateProcessSlot(AuProcess* parent, char* name) {

$LN6:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 229  : 	AuProcess* proc = (AuProcess*)kmalloc(sizeof(AuProcess));

	mov	ecx, 1103				; 0000044fH
	call	kmalloc
	mov	QWORD PTR proc$[rsp], rax

; 230  : 	memset(proc, 0, sizeof(AuProcess));

	mov	r8d, 1103				; 0000044fH
	xor	edx, edx
	mov	rcx, QWORD PTR proc$[rsp]
	call	memset

; 231  : 
; 232  : 	proc->proc_id = AuAllocateProcessID();

	call	?AuAllocateProcessID@@YAHXZ		; AuAllocateProcessID
	mov	rcx, QWORD PTR proc$[rsp]
	mov	DWORD PTR [rcx], eax

; 233  : 	memset(proc->name, 0, 16);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	r8d, 16
	xor	edx, edx
	mov	rcx, rax
	call	memset

; 234  : 	strcpy(proc->name, name);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	rdx, QWORD PTR name$[rsp]
	mov	rcx, rax
	call	strcpy

; 235  : 
; 236  : 	/* create empty virtual address space */
; 237  : 	uint64_t* cr3 = AuCreateVirtualAddressSpace();

	call	AuCreateVirtualAddressSpace
	mov	QWORD PTR cr3$[rsp], rax

; 238  : 	/* create the process main thread stack */
; 239  : 	uint64_t  main_thr_stack = (uint64_t)CreateUserStack(cr3);

	mov	rcx, QWORD PTR cr3$[rsp]
	call	?CreateUserStack@@YAPEA_KPEA_K@Z	; CreateUserStack
	mov	QWORD PTR main_thr_stack$[rsp], rax

; 240  : 	proc->state = PROCESS_STATE_NOT_READY;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 1

; 241  : 	proc->cr3 = cr3;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR cr3$[rsp]
	mov	QWORD PTR [rax+22], rcx

; 242  : 	proc->_main_stack_ = main_thr_stack;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR main_thr_stack$[rsp]
	mov	QWORD PTR [rax+46], rcx

; 243  : 
; 244  : 	proc->vmareas = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1047], rax

; 245  : 	proc->shmmaps = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1055], rax

; 246  : 	proc->shm_break = USER_SHARED_MEM_START;

	mov	rax, QWORD PTR proc$[rsp]
	mov	ecx, -2147483648			; 80000000H
	mov	QWORD PTR [rax+1063], rcx

; 247  : 	proc->proc_mem_heap = PROCESS_BREAK_ADDRESS;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1071], 805306368		; 30000000H

; 248  : 	proc->proc_mmap_len = 0;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1079], 0

; 249  : 
; 250  : 	for (int i = 0; i < FILE_DESC_PER_PROCESS; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuCreatePr
$LN2@AuCreatePr:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuCreatePr:
	cmp	DWORD PTR i$1[rsp], 60			; 0000003cH
	jge	SHORT $LN1@AuCreatePr

; 251  : 		proc->fds[i] = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+rax*8+551], 0
	jmp	SHORT $LN2@AuCreatePr
$LN1@AuCreatePr:

; 252  : 
; 253  : 	proc->main_thread = NULL;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+54], 0

; 254  : 
; 255  : 	/* create the main thread after loading the
; 256  : 	* image file to process, because just after
; 257  : 	* creating the thread, scheduler starts
; 258  : 	* scheduling that thread
; 259  : 	*/
; 260  : 	AuAddProcess(parent, proc);

	mov	rdx, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR parent$[rsp]
	call	?AuAddProcess@@YAXPEAU_au_proc_@@0@Z	; AuAddProcess

; 261  : 	return proc;

	mov	rax, QWORD PTR proc$[rsp]

; 262  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z ENDP ; AuCreateProcessSlot
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
?AuGetRootProcess@@YAPEAU_au_proc_@@XZ PROC		; AuGetRootProcess

; 288  : 	return root_proc;

	mov	rax, QWORD PTR ?root_proc@@3PEAU_au_proc_@@EA ; root_proc

; 289  : }

	ret	0
?AuGetRootProcess@@YAPEAU_au_proc_@@XZ ENDP		; AuGetRootProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
num_args$ = 32
argvs$ = 40
about_str$ = 48
about$ = 56
?AuStartRootProc@@YAXXZ PROC				; AuStartRootProc

; 268  : void AuStartRootProc() {

$LN3:
	sub	rsp, 72					; 00000048H

; 269  : 	proc_first = NULL;

	mov	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, 0 ; proc_first

; 270  : 	proc_last = NULL;

	mov	QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA, 0 ; proc_last

; 271  : 	pid = 1;

	mov	DWORD PTR pid, 1

; 272  : 	process_mutex = AuCreateMutex();

	call	AuCreateMutex
	mov	QWORD PTR ?process_mutex@@3PEAU_mutex_@@EA, rax ; process_mutex

; 273  : 	root_proc = AuCreateRootProc();

	call	?AuCreateRootProc@@YAPEAU_au_proc_@@XZ	; AuCreateRootProc
	mov	QWORD PTR ?root_proc@@3PEAU_au_proc_@@EA, rax ; root_proc

; 274  : 	int num_args = 1;

	mov	DWORD PTR num_args$[rsp], 1

; 275  : 	char* about_str = "-about";

	lea	rax, OFFSET FLAT:$SG4040
	mov	QWORD PTR about_str$[rsp], rax

; 276  : 	char* about = (char*)kmalloc(strlen(about_str));

	mov	rcx, QWORD PTR about_str$[rsp]
	call	strlen
	mov	ecx, eax
	call	kmalloc
	mov	QWORD PTR about$[rsp], rax

; 277  : 	strcpy(about, about_str);

	mov	rdx, QWORD PTR about_str$[rsp]
	mov	rcx, QWORD PTR about$[rsp]
	call	strcpy

; 278  : 	char** argvs = (char**)kmalloc(num_args);

	mov	ecx, DWORD PTR num_args$[rsp]
	call	kmalloc
	mov	QWORD PTR argvs$[rsp], rax

; 279  : 	memset(argvs, 0, num_args);

	mov	r8d, DWORD PTR num_args$[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR argvs$[rsp]
	call	memset

; 280  : 	argvs[0] = about;

	mov	eax, 8
	imul	rax, rax, 0
	mov	rcx, QWORD PTR argvs$[rsp]
	mov	rdx, QWORD PTR about$[rsp]
	mov	QWORD PTR [rcx+rax], rdx

; 281  : 	AuLoadExecToProcess(root_proc, "/init.exe",num_args,argvs);

	mov	r9, QWORD PTR argvs$[rsp]
	mov	r8d, DWORD PTR num_args$[rsp]
	lea	rdx, OFFSET FLAT:$SG4045
	mov	rcx, QWORD PTR ?root_proc@@3PEAU_au_proc_@@EA ; root_proc
	call	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess

; 282  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuStartRootProc@@YAXXZ ENDP				; AuStartRootProc
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
i$1 = 32
location$ = 40
blk$2 = 48
tv73 = 56
cr3$ = 80
?CreateUserStack@@YAPEA_KPEA_K@Z PROC			; CreateUserStack

; 164  : uint64_t* CreateUserStack(uint64_t* cr3) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 165  : #define USER_STACK 0x0000700000000000 
; 166  : 	uint64_t location = USER_STACK;

	mov	rax, 123145302310912			; 0000700000000000H
	mov	QWORD PTR location$[rsp], rax

; 167  : 
; 168  : 	for (int i = 0; i < PROCESS_USER_STACK_SZ / 4096; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@CreateUser
$LN2@CreateUser:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@CreateUser:
	cmp	DWORD PTR i$1[rsp], 64			; 00000040H
	jge	SHORT $LN1@CreateUser

; 169  : 		uint64_t* blk = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR blk$2[rsp], rax

; 170  : 		AuMapPageEx(cr3, V2P((size_t)blk), location + i * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR location$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR tv73[rsp], rax
	mov	rcx, QWORD PTR blk$2[rsp]
	call	V2P
	mov	r9b, 4
	mov	rcx, QWORD PTR tv73[rsp]
	mov	r8, rcx
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuMapPageEx

; 171  : 	}

	jmp	SHORT $LN2@CreateUser
$LN1@CreateUser:

; 172  : 
; 173  : 	return (uint64_t*)(USER_STACK + (PROCESS_USER_STACK_SZ));

	mov	rax, 123145302573056			; 0000700000040000H

; 174  : }

	add	rsp, 72					; 00000048H
	ret	0
?CreateUserStack@@YAPEA_KPEA_K@Z ENDP			; CreateUserStack
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
thread$ = 32
?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z PROC ; AuProcessFindThread

; 149  : AuProcess *AuProcessFindThread(AuThread* thread) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 150  : 	for (AuProcess *proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuProcessF
$LN3@AuProcessF:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuProcessF:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuProcessF

; 151  : 		if (proc_->main_thread == thread) {

	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rcx, QWORD PTR thread$[rsp]
	cmp	QWORD PTR [rax+54], rcx
	jne	SHORT $LN1@AuProcessF

; 152  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuProcessF
$LN1@AuProcessF:

; 153  : 		}
; 154  : 	}

	jmp	SHORT $LN3@AuProcessF
$LN2@AuProcessF:

; 155  : 
; 156  : 	return NULL;

	xor	eax, eax
$LN5@AuProcessF:

; 157  : }

	add	rsp, 24
	ret	0
?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ENDP ; AuProcessFindThread
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
proc_$1 = 0
pid$ = 32
?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z PROC		; AuProcessFindPID

; 136  : AuProcess *AuProcessFindPID(int pid) {

$LN7:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 24

; 137  : 	for (AuProcess *proc_ = proc_first; proc_ != NULL; proc_ = proc_->next) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	QWORD PTR proc_$1[rsp], rax
	jmp	SHORT $LN4@AuProcessF
$LN3@AuProcessF:
	mov	rax, QWORD PTR proc_$1[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR proc_$1[rsp], rax
$LN4@AuProcessF:
	cmp	QWORD PTR proc_$1[rsp], 0
	je	SHORT $LN2@AuProcessF

; 138  : 		if (proc_->proc_id == pid)

	mov	rax, QWORD PTR proc_$1[rsp]
	mov	ecx, DWORD PTR pid$[rsp]
	cmp	DWORD PTR [rax], ecx
	jne	SHORT $LN1@AuProcessF

; 139  : 			return proc_;

	mov	rax, QWORD PTR proc_$1[rsp]
	jmp	SHORT $LN5@AuProcessF
$LN1@AuProcessF:

; 140  : 	}

	jmp	SHORT $LN3@AuProcessF
$LN2@AuProcessF:

; 141  : 	return NULL;

	xor	eax, eax
$LN5@AuProcessF:

; 142  : }

	add	rsp, 24
	ret	0
?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z ENDP		; AuProcessFindPID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
parent$ = 48
proc$ = 56
?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z PROC		; AuRemoveProcess

; 83   : void AuRemoveProcess(AuProcess* parent, AuProcess* proc) {

$LN8:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 84   : 	if (proc_first == NULL)

	cmp	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, 0 ; proc_first
	jne	SHORT $LN5@AuRemovePr

; 85   : 		return;

	jmp	$LN6@AuRemovePr
$LN5@AuRemovePr:

; 86   : 
; 87   : 	if (proc == proc_first) {

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	cmp	QWORD PTR proc$[rsp], rax
	jne	SHORT $LN4@AuRemovePr

; 88   : 		proc_first = proc_first->next;

	mov	rax, QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA ; proc_first
	mov	rax, QWORD PTR [rax+1087]
	mov	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, rax ; proc_first

; 89   : 	}
; 90   : 	else {

	jmp	SHORT $LN3@AuRemovePr
$LN4@AuRemovePr:

; 91   : 		proc->prev->next = proc->next;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1095]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rcx+1087]
	mov	QWORD PTR [rax+1087], rcx
$LN3@AuRemovePr:

; 92   : 	}
; 93   : 
; 94   : 	if (proc == proc_last) {

	mov	rax, QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA ; proc_last
	cmp	QWORD PTR proc$[rsp], rax
	jne	SHORT $LN2@AuRemovePr

; 95   : 		proc_last = proc->prev;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1095]
	mov	QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA, rax ; proc_last

; 96   : 	}
; 97   : 	else {

	jmp	SHORT $LN1@AuRemovePr
$LN2@AuRemovePr:

; 98   : 		proc->next->prev = proc->prev;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1087]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rcx+1095]
	mov	QWORD PTR [rax+1095], rcx
$LN1@AuRemovePr:

; 99   : 	}
; 100  : 	kfree(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	kfree
$LN6@AuRemovePr:

; 101  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuRemoveProcess@@YAXPEAU_au_proc_@@0@Z ENDP		; AuRemoveProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\process.cpp
_TEXT	SEGMENT
parent$ = 8
proc$ = 16
?AuAddProcess@@YAXPEAU_au_proc_@@0@Z PROC		; AuAddProcess

; 61   : void AuAddProcess(AuProcess* parent, AuProcess *proc) {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 62   : 	proc->next = NULL;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1087], 0

; 63   : 	proc->prev = NULL;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1095], 0

; 64   : 
; 65   : 	if (proc_first == NULL) {

	cmp	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, 0 ; proc_first
	jne	SHORT $LN2@AuAddProce

; 66   : 		proc_last = proc;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA, rax ; proc_last

; 67   : 		proc_first = proc;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR ?proc_first@@3PEAU_au_proc_@@EA, rax ; proc_first

; 68   : 	}
; 69   : 	else {

	jmp	SHORT $LN1@AuAddProce
$LN2@AuAddProce:

; 70   : 		proc_last->next = proc;

	mov	rax, QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA ; proc_last
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rax+1087], rcx

; 71   : 		proc->prev = proc_last;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA ; proc_last
	mov	QWORD PTR [rax+1095], rcx
$LN1@AuAddProce:

; 72   : 	}
; 73   : 	proc_last = proc;

	mov	rax, QWORD PTR proc$[rsp]
	mov	QWORD PTR ?proc_last@@3PEAU_au_proc_@@EA, rax ; proc_last

; 74   : 	//proc->parent = parent;
; 75   : }

	ret	0
?AuAddProcess@@YAXPEAU_au_proc_@@0@Z ENDP		; AuAddProcess
_TEXT	ENDS
END
