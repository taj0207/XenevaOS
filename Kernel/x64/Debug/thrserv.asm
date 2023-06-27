; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3561	DB	'No process found ', 0aH, 00H
CONST	ENDS
PUBLIC	?PauseThread@@YAHXZ				; PauseThread
PUBLIC	?GetThreadID@@YAGXZ				; GetThreadID
PUBLIC	?GetProcessID@@YAHXZ				; GetProcessID
PUBLIC	?ProcessExit@@YAHXZ				; ProcessExit
PUBLIC	?ProcessWaitForTermination@@YAHH@Z		; ProcessWaitForTermination
PUBLIC	?CreateProcess@@YAHHPEAD@Z			; CreateProcess
PUBLIC	?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z		; ProcessLoadExec
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuBlockThread:PROC
EXTRN	x64_force_sched:PROC
EXTRN	?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z:PROC	; AuProcessFindPID
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z:PROC ; AuCreateProcessSlot
EXTRN	?AuProcessExit@@YAXPEAU_au_proc_@@@Z:PROC	; AuProcessExit
EXTRN	?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z:PROC ; AuProcessWaitForTermination
EXTRN	strlen:PROC
EXTRN	memset:PROC
EXTRN	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z:PROC ; AuLoadExecToProcess
EXTRN	kmalloc:PROC
EXTRN	AuTextOut:PROC
pdata	SEGMENT
$pdata$?PauseThread@@YAHXZ DD imagerel $LN3
	DD	imagerel $LN3+39
	DD	imagerel $unwind$?PauseThread@@YAHXZ
$pdata$?GetThreadID@@YAGXZ DD imagerel $LN4
	DD	imagerel $LN4+46
	DD	imagerel $unwind$?GetThreadID@@YAGXZ
$pdata$?GetProcessID@@YAHXZ DD imagerel $LN4
	DD	imagerel $LN4+56
	DD	imagerel $unwind$?GetProcessID@@YAHXZ
$pdata$?ProcessExit@@YAHXZ DD imagerel $LN4
	DD	imagerel $LN4+61
	DD	imagerel $unwind$?ProcessExit@@YAHXZ
$pdata$?ProcessWaitForTermination@@YAHH@Z DD imagerel $LN3
	DD	imagerel $LN3+54
	DD	imagerel $unwind$?ProcessWaitForTermination@@YAHH@Z
$pdata$?CreateProcess@@YAHHPEAD@Z DD imagerel $LN4
	DD	imagerel $LN4+57
	DD	imagerel $unwind$?CreateProcess@@YAHHPEAD@Z
$pdata$?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z DD imagerel $LN11
	DD	imagerel $LN11+282
	DD	imagerel $unwind$?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?PauseThread@@YAHXZ DD 010401H
	DD	06204H
$unwind$?GetThreadID@@YAGXZ DD 010401H
	DD	06204H
$unwind$?GetProcessID@@YAHXZ DD 010401H
	DD	06204H
$unwind$?ProcessExit@@YAHXZ DD 010401H
	DD	06204H
$unwind$?ProcessWaitForTermination@@YAHH@Z DD 010801H
	DD	06208H
$unwind$?CreateProcess@@YAHHPEAD@Z DD 010d01H
	DD	0620dH
$unwind$?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z DD 011701H
	DD	0a217H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
char_cnt$ = 32
i$1 = 36
i$2 = 40
allocated_argv$ = 48
proc$ = 56
l$3 = 64
proc_id$ = 96
filename$ = 104
argc$ = 112
argv$ = 120
?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z PROC		; ProcessLoadExec

; 113  : int ProcessLoadExec(int proc_id, char* filename,int argc, char** argv) {

$LN11:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 88					; 00000058H

; 114  : 	AuProcess* proc = AuProcessFindPID(proc_id);

	mov	ecx, DWORD PTR proc_id$[rsp]
	call	?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z	; AuProcessFindPID
	mov	QWORD PTR proc$[rsp], rax

; 115  : 	if (!proc) {

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN8@ProcessLoa

; 116  : 		AuTextOut("No process found \n");

	lea	rcx, OFFSET FLAT:$SG3561
	call	AuTextOut

; 117  : 		return -1;

	mov	eax, -1
	jmp	$LN9@ProcessLoa
$LN8@ProcessLoa:

; 118  : 	}
; 119  : 	
; 120  : 	/* prepare stuffs for passing arguments */
; 121  : 	int char_cnt = 0;

	mov	DWORD PTR char_cnt$[rsp], 0

; 122  : 	for (int i = 0; i < argc; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN7@ProcessLoa
$LN6@ProcessLoa:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN7@ProcessLoa:
	mov	eax, DWORD PTR argc$[rsp]
	cmp	DWORD PTR i$2[rsp], eax
	jge	SHORT $LN5@ProcessLoa

; 123  : 		size_t l = strlen(argv[i]);

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR argv$[rsp]
	mov	rcx, QWORD PTR [rcx+rax*8]
	call	strlen
	mov	QWORD PTR l$3[rsp], rax

; 124  : 		char_cnt += l;

	movsxd	rax, DWORD PTR char_cnt$[rsp]
	add	rax, QWORD PTR l$3[rsp]
	mov	DWORD PTR char_cnt$[rsp], eax

; 125  : 	}

	jmp	SHORT $LN6@ProcessLoa
$LN5@ProcessLoa:

; 126  : 
; 127  : 	
; 128  : 	char** allocated_argv = 0;

	mov	QWORD PTR allocated_argv$[rsp], 0

; 129  : 	if (char_cnt > 0) {

	cmp	DWORD PTR char_cnt$[rsp], 0
	jle	SHORT $LN4@ProcessLoa

; 130  : 		allocated_argv = (char**)kmalloc(char_cnt);

	mov	ecx, DWORD PTR char_cnt$[rsp]
	call	kmalloc
	mov	QWORD PTR allocated_argv$[rsp], rax

; 131  : 		memset(allocated_argv, 0, char_cnt);

	mov	r8d, DWORD PTR char_cnt$[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR allocated_argv$[rsp]
	call	memset

; 132  : 		for (int i = 0; i < argc; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@ProcessLoa
$LN2@ProcessLoa:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@ProcessLoa:
	mov	eax, DWORD PTR argc$[rsp]
	cmp	DWORD PTR i$1[rsp], eax
	jge	SHORT $LN1@ProcessLoa

; 133  : 			allocated_argv[i] = argv[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR allocated_argv$[rsp]
	mov	r8, QWORD PTR argv$[rsp]
	mov	rax, QWORD PTR [r8+rax*8]
	mov	QWORD PTR [rdx+rcx*8], rax
	jmp	SHORT $LN2@ProcessLoa
$LN1@ProcessLoa:
$LN4@ProcessLoa:

; 134  : 	}
; 135  : 
; 136  : 	AuLoadExecToProcess(proc, filename, argc,allocated_argv);

	mov	r9, QWORD PTR allocated_argv$[rsp]
	mov	r8d, DWORD PTR argc$[rsp]
	mov	rdx, QWORD PTR filename$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess
$LN9@ProcessLoa:

; 137  : 	//SeTextOut("process launched -> %s \r\n", proc->file->filename);
; 138  : }

	add	rsp, 88					; 00000058H
	ret	0
?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z ENDP		; ProcessLoadExec
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
slot$ = 32
parent_id$ = 64
name$ = 72
?CreateProcess@@YAHHPEAD@Z PROC				; CreateProcess

; 102  : int CreateProcess(int parent_id, char *name) {

$LN4:
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 56					; 00000038H

; 103  : 	AuProcess* slot = AuCreateProcessSlot(0, name);

	mov	rdx, QWORD PTR name$[rsp]
	xor	ecx, ecx
	call	?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z ; AuCreateProcessSlot
	mov	QWORD PTR slot$[rsp], rax

; 104  : 	if (!slot)

	cmp	QWORD PTR slot$[rsp], 0
	jne	SHORT $LN1@CreateProc

; 105  : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN2@CreateProc
$LN1@CreateProc:

; 106  : 	return slot->proc_id;

	mov	rax, QWORD PTR slot$[rsp]
	mov	eax, DWORD PTR [rax]
$LN2@CreateProc:

; 107  : }

	add	rsp, 56					; 00000038H
	ret	0
?CreateProcess@@YAHHPEAD@Z ENDP				; CreateProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
current_thr$ = 32
proc$ = 40
pid$ = 64
?ProcessWaitForTermination@@YAHH@Z PROC			; ProcessWaitForTermination

; 90   : int ProcessWaitForTermination(int pid) {

$LN3:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 56					; 00000038H

; 91   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 92   : 	AuProcess* proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 93   : 	AuProcessWaitForTermination(proc, pid);

	mov	edx, DWORD PTR pid$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z ; AuProcessWaitForTermination

; 94   : 	return 0;

	xor	eax, eax

; 95   : }

	add	rsp, 56					; 00000038H
	ret	0
?ProcessWaitForTermination@@YAHH@Z ENDP			; ProcessWaitForTermination
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
proc$ = 32
current_thr$ = 40
?ProcessExit@@YAHXZ PROC				; ProcessExit

; 76   : int ProcessExit() {

$LN4:
	sub	rsp, 56					; 00000038H

; 77   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 78   : 	AuProcess* proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 79   : 	if (!proc)

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN1@ProcessExi

; 80   : 		return 1;

	mov	eax, 1
	jmp	SHORT $LN2@ProcessExi
$LN1@ProcessExi:

; 81   : 	AuProcessExit(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuProcessExit@@YAXPEAU_au_proc_@@@Z	; AuProcessExit

; 82   : 	return 0;

	xor	eax, eax
$LN2@ProcessExi:

; 83   : }

	add	rsp, 56					; 00000038H
	ret	0
?ProcessExit@@YAHXZ ENDP				; ProcessExit
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
proc$ = 32
current_thr$ = 40
?GetProcessID@@YAHXZ PROC				; GetProcessID

; 65   : int GetProcessID() {

$LN4:
	sub	rsp, 56					; 00000038H

; 66   : 	AuThread * current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 67   : 	AuProcess* proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 68   : 	if (!proc)

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN1@GetProcess

; 69   : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN2@GetProcess
$LN1@GetProcess:

; 70   : 	return proc->proc_id;

	mov	rax, QWORD PTR proc$[rsp]
	mov	eax, DWORD PTR [rax]
$LN2@GetProcess:

; 71   : }

	add	rsp, 56					; 00000038H
	ret	0
?GetProcessID@@YAHXZ ENDP				; GetProcessID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
current_thr$ = 32
?GetThreadID@@YAGXZ PROC				; GetThreadID

; 54   : uint16_t GetThreadID() {

$LN4:
	sub	rsp, 56					; 00000038H

; 55   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 56   : 	if (!current_thr)

	cmp	QWORD PTR current_thr$[rsp], 0
	jne	SHORT $LN1@GetThreadI

; 57   : 		return -1;

	mov	eax, 65535				; 0000ffffH
	jmp	SHORT $LN2@GetThreadI
$LN1@GetThreadI:

; 58   : 	return current_thr->id;

	mov	rax, QWORD PTR current_thr$[rsp]
	movzx	eax, WORD PTR [rax+293]
$LN2@GetThreadI:

; 59   : }

	add	rsp, 56					; 00000038H
	ret	0
?GetThreadID@@YAGXZ ENDP				; GetThreadID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
current_thr$ = 32
?PauseThread@@YAHXZ PROC				; PauseThread

; 44   : int PauseThread() {

$LN3:
	sub	rsp, 56					; 00000038H

; 45   : 	AuThread * current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 46   : 	AuBlockThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	AuBlockThread

; 47   : 	x64_force_sched();

	call	x64_force_sched

; 48   : 	return 1;

	mov	eax, 1

; 49   : }

	add	rsp, 56					; 00000038H
	ret	0
?PauseThread@@YAHXZ ENDP				; PauseThread
_TEXT	ENDS
END
