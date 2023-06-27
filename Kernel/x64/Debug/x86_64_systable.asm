; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?null_call@@YA_K_K00000@Z			; null_call
EXTRN	AuTextOut:PROC
EXTRN	?PauseThread@@YAHXZ:PROC			; PauseThread
EXTRN	?GetThreadID@@YAGXZ:PROC			; GetThreadID
EXTRN	?GetProcessID@@YAHXZ:PROC			; GetProcessID
EXTRN	?ProcessExit@@YAHXZ:PROC			; ProcessExit
EXTRN	?ProcessWaitForTermination@@YAHH@Z:PROC		; ProcessWaitForTermination
EXTRN	?CreateProcess@@YAHHPEAD@Z:PROC			; CreateProcess
EXTRN	?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z:PROC	; ProcessLoadExec
EXTRN	?CreateSharedMem@@YAHG_KE@Z:PROC		; CreateSharedMem
EXTRN	?ObtainSharedMem@@YAPEAXGPEAXH@Z:PROC		; ObtainSharedMem
EXTRN	?UnmapSharedMem@@YAXG@Z:PROC			; UnmapSharedMem
EXTRN	?GetProcessHeapMem@@YA_K_K@Z:PROC		; GetProcessHeapMem
EXTRN	?OpenFile@@YAHPEADH@Z:PROC			; OpenFile
EXTRN	?ReadFile@@YA_KHPEAX_K@Z:PROC			; ReadFile
EXTRN	?WriteFile@@YA_KHPEAX_K@Z:PROC			; WriteFile
EXTRN	?CreateDir@@YAHPEAD@Z:PROC			; CreateDir
EXTRN	?RemoveFile@@YAHPEAD@Z:PROC			; RemoveFile
EXTRN	?CloseFile@@YAHH@Z:PROC				; CloseFile
EXTRN	?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z:PROC	; CreateMemMapping
EXTRN	?UnmapMemMapping@@YAXPEAX_K@Z:PROC		; UnmapMemMapping
_DATA	SEGMENT
syscalls DQ	FLAT:?null_call@@YA_K_K00000@Z
	DQ	FLAT:AuTextOut
	DQ	FLAT:?PauseThread@@YAHXZ
	DQ	FLAT:?GetThreadID@@YAGXZ
	DQ	FLAT:?GetProcessID@@YAHXZ
	DQ	FLAT:?ProcessExit@@YAHXZ
	DQ	FLAT:?ProcessWaitForTermination@@YAHH@Z
	DQ	FLAT:?CreateProcess@@YAHHPEAD@Z
	DQ	FLAT:?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z
	DQ	FLAT:?CreateSharedMem@@YAHG_KE@Z
	DQ	FLAT:?ObtainSharedMem@@YAPEAXGPEAXH@Z
	DQ	FLAT:?UnmapSharedMem@@YAXG@Z
	DQ	FLAT:?OpenFile@@YAHPEADH@Z
	DQ	FLAT:?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z
	DQ	FLAT:?UnmapMemMapping@@YAXPEAX_K@Z
	DQ	FLAT:?GetProcessHeapMem@@YA_K_K@Z
	DQ	FLAT:?ReadFile@@YA_KHPEAX_K@Z
	DQ	FLAT:?WriteFile@@YA_KHPEAX_K@Z
	DQ	FLAT:?CreateDir@@YAHPEAD@Z
	DQ	FLAT:?RemoveFile@@YAHPEAD@Z
	DQ	FLAT:?CloseFile@@YAHH@Z
	ORG $+40
_DATA	ENDS
CONST	SEGMENT
$SG3856	DB	'%s', 0aH, 00H
CONST	ENDS
PUBLIC	?KePrintMsg@@YA_K_K00000@Z			; KePrintMsg
PUBLIC	x64_syscall_handler
EXTRN	AuGetCurrentThread:PROC
pdata	SEGMENT
$pdata$?KePrintMsg@@YA_K_K00000@Z DD imagerel $LN3
	DD	imagerel $LN3+58
	DD	imagerel $unwind$?KePrintMsg@@YA_K_K00000@Z
$pdata$x64_syscall_handler DD imagerel $LN5
	DD	imagerel $LN5+180
	DD	imagerel $unwind$x64_syscall_handler
pdata	ENDS
xdata	SEGMENT
$unwind$?KePrintMsg@@YA_K_K00000@Z DD 011801H
	DD	06218H
$unwind$x64_syscall_handler DD 010801H
	DD	0a208H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_systable.cpp
_TEXT	SEGMENT
current_thr$ = 48
func$ = 56
ret_code$ = 64
a$ = 96
x64_syscall_handler PROC

; 102  : extern "C" uint64_t x64_syscall_handler(int a) {

$LN5:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 88					; 00000058H

; 103  : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 104  : 	uint64_t ret_code = 0;

	mov	QWORD PTR ret_code$[rsp], 0

; 105  : 
; 106  : 	if (a > AURORA_MAX_SYSCALL)

	cmp	DWORD PTR a$[rsp], 26
	jle	SHORT $LN2@x64_syscal

; 107  : 		return -1;

	mov	rax, -1
	jmp	$LN3@x64_syscal
$LN2@x64_syscal:

; 108  : 
; 109  : 	syscall_func func = (syscall_func)syscalls[a];

	movsxd	rax, DWORD PTR a$[rsp]
	lea	rcx, OFFSET FLAT:syscalls
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR func$[rsp], rax

; 110  : 	if (!func)

	cmp	QWORD PTR func$[rsp], 0
	jne	SHORT $LN1@x64_syscal

; 111  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@x64_syscal
$LN1@x64_syscal:

; 112  : 
; 113  : 	ret_code = func(current_thr->syscall_param.param1, current_thr->syscall_param.param2, current_thr->syscall_param.param3,
; 114  : 			current_thr->syscall_param.param4, current_thr->syscall_param.param5, current_thr->syscall_param.param6);

	mov	rax, QWORD PTR current_thr$[rsp]
	mov	rax, QWORD PTR [rax+264]
	mov	QWORD PTR [rsp+40], rax
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	rax, QWORD PTR [rax+256]
	mov	QWORD PTR [rsp+32], rax
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	r9, QWORD PTR [rax+248]
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	r8, QWORD PTR [rax+240]
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	rdx, QWORD PTR [rax+232]
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	rcx, QWORD PTR [rax+224]
	call	QWORD PTR func$[rsp]
	mov	QWORD PTR ret_code$[rsp], rax

; 115  : 
; 116  : 	return ret_code;

	mov	rax, QWORD PTR ret_code$[rsp]
$LN3@x64_syscal:

; 117  : }

	add	rsp, 88					; 00000058H
	ret	0
x64_syscall_handler ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_systable.cpp
_TEXT	SEGMENT
param1$ = 8
param2$ = 16
param3$ = 24
param4$ = 32
param5$ = 40
param6$ = 48
?null_call@@YA_K_K00000@Z PROC				; null_call

; 67   : 	param4, uint64_t param5, uint64_t param6) {

	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 68   : 	return 0;

	xor	eax, eax

; 69   : }

	ret	0
?null_call@@YA_K_K00000@Z ENDP				; null_call
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_systable.cpp
_TEXT	SEGMENT
text$ = 32
param1$ = 64
param2$ = 72
param3$ = 80
param4$ = 88
param5$ = 96
param6$ = 104
?KePrintMsg@@YA_K_K00000@Z PROC				; KePrintMsg

; 57   : 	param4, uint64_t param5, uint64_t param6) {

$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 58   : 	char* text = (char*)param1;

	mov	rax, QWORD PTR param1$[rsp]
	mov	QWORD PTR text$[rsp], rax

; 59   : 	AuTextOut("%s\n",text);

	mov	rdx, QWORD PTR text$[rsp]
	lea	rcx, OFFSET FLAT:$SG3856
	call	AuTextOut

; 60   : 	return 0;

	xor	eax, eax

; 61   : }

	add	rsp, 56					; 00000038H
	ret	0
?KePrintMsg@@YA_K_K00000@Z ENDP				; KePrintMsg
_TEXT	ENDS
END
