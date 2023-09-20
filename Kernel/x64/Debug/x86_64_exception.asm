; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3838	DB	0dH, 0aH, ' ***ARCH x86_64 : Kernel Panic!!! *** ', 0dH, 0aH
	DB	00H
	ORG $+5
$SG3839	DB	'[Aurora Kernel]: We are sorry to say that, a processor i'
	DB	'nvalid exception has occured ', 0dH, 0aH, 00H
$SG3841	DB	'[Aurora Kernel]: Below is the code of exception ', 0dH, 0aH
	DB	00H
	ORG $+5
$SG3840	DB	'[Aurora Kernel]: please inform it to the master of the k'
	DB	'ernel ', 0dH, 0aH, 00H
	ORG $+3
$SG3843	DB	' %s ', 0dH, 0aH, 00H
	ORG $+5
$SG3842	DB	'[Aurora Kernel]: Current Processor id -> %d ', 0dH, 0aH, 00H
	ORG $+1
$SG3850	DB	0aH, 'Divide by 0', 00H
	ORG $+3
$SG3851	DB	'Divide by 0 ', 0dH, 0aH, 00H
	ORG $+1
$SG3852	DB	'__PROCESSOR_DATA__ ', 0dH, 0aH, 00H
	ORG $+2
$SG3853	DB	'RIP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG3854	DB	'RSP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG3855	DB	'RFLAGS -> %x ', 0dH, 0aH, 00H
$SG3865	DB	0aH, 'Single Step Trap', 00H
	ORG $+6
$SG3873	DB	0aH, 'NMI [Non-Muskable-Interrupt] Trap', 00H
	ORG $+5
$SG3881	DB	0aH, 'Breakpoint Trap', 00H
	ORG $+7
$SG3889	DB	0aH, 'Overflow Trap', 00H
	ORG $+1
$SG3897	DB	0aH, 'Bound Check Fault', 00H
	ORG $+5
$SG3907	DB	'Invalid Opcode Fault ', 0dH, 0aH, 00H
$SG3908	DB	'Invalid Opcode Fault ', 0dH, 0aH, 00H
$SG3909	DB	'__PROCESSOR TRACE__ ', 0dH, 0aH, 00H
	ORG $+1
$SG3910	DB	'RIP -> %x', 0aH, 00H
	ORG $+5
$SG3911	DB	'Stack -> %x', 0aH, 00H
	ORG $+3
$SG3912	DB	'RFLAGS -> %x', 0aH, 00H
	ORG $+2
$SG3913	DB	'CS -> %x', 0aH, 00H
	ORG $+6
$SG3914	DB	'SS -> %x', 0aH, 00H
	ORG $+6
$SG3922	DB	0aH, 'No Device Fault', 00H
	ORG $+7
$SG3930	DB	0aH, 'Double Fault Abort', 00H
	ORG $+4
$SG3938	DB	0aH, 'Invalid TSS Fault ', 00H
	ORG $+4
$SG3946	DB	0aH, 'No Segment Fault', 00H
	ORG $+6
$SG3954	DB	0aH, 'Stack Fault at ', 00H
	ORG $+7
$SG3964	DB	'Genral Protection Fault ', 0dH, 0aH, 00H
	ORG $+5
$SG3965	DB	'General Protection Fault ', 0dH, 0aH, 00H
	ORG $+4
$SG3966	DB	'__PROCESSOR TRACE__ ', 0dH, 0aH, 00H
	ORG $+1
$SG3967	DB	'RIP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG3968	DB	'Stack -> %x ', 0dH, 0aH, 00H
	ORG $+1
$SG3969	DB	'RFLAGS -> %x ', 0dH, 0aH, 00H
$SG3970	DB	'CS -> %x, SS -> %x ', 0dH, 0aH, 00H
	ORG $+2
$SG3971	DB	'Current thread ->id %d , %s', 0dH, 0aH, 00H
	ORG $+2
$SG3988	DB	'Page Fault !! ', 0dH, 0aH, 00H
	ORG $+7
$SG3993	DB	'Process pid -> %d ', 0dH, 0aH, 00H
	ORG $+3
$SG3994	DB	'Process name -> %s ', 0dH, 0aH, 00H
	ORG $+2
$SG4000	DB	'Page Not Present ', 0dH, 0aH, 00H
	ORG $+4
$SG4003	DB	'Read/Write ', 0dH, 0aH, 00H
	ORG $+2
$SG4006	DB	'VPage rw -> %d , user -> %d ', 0dH, 0aH, 00H
	ORG $+1
$SG4007	DB	'VPage phys1-> %x, phys2-> %x ', 0dH, 0aH, 00H
$SG4010	DB	'User bit not set ', 0dH, 0aH, 00H
	ORG $+4
$SG4013	DB	'Reserved page ', 0dH, 0aH, 00H
	ORG $+7
$SG4016	DB	'Invalid page ', 0dH, 0aH, 00H
$SG4017	DB	'Virtual Address -> %x ', 0dH, 0aH, 00H
	ORG $+7
$SG4018	DB	'Virtual Address aligned -> %x ', 0dH, 0aH, 00H
	ORG $+7
$SG4019	DB	'RSP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG4020	DB	'RIP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG4021	DB	'CS -> %x, SS -> %x ', 0dH, 0aH, 00H
	ORG $+2
$SG4030	DB	0aH, 'FPU Fault', 00H
	ORG $+5
$SG4038	DB	0aH, 'Alignment Check Fault at address ', 00H
	ORG $+5
$SG4046	DB	0aH, 'Machine Check Abort', 00H
	ORG $+3
$SG4056	DB	0aH, ' SIMD FPU Faul ', 0dH, 0aH, 't', 00H
	ORG $+4
$SG4057	DB	0aH, '__CPU Informations__ ', 0aH, 00H
$SG4058	DB	' RIP -> %x ', 0aH, 00H
	ORG $+3
$SG4059	DB	' RSP -> %x ', 0aH, 00H
	ORG $+3
$SG4060	DB	' RFLAGS -> %x ', 0aH, 00H
$SG4061	DB	' MXCSR bit  -- ', 00H
CONST	ENDS
PUBLIC	?x86_64_exception_init@@YAXXZ			; x86_64_exception_init
PUBLIC	?panic@@YAXPEBDZZ				; panic
PUBLIC	?divide_by_zero_fault@@YAX_KPEAX@Z		; divide_by_zero_fault
PUBLIC	?single_step_trap@@YAX_KPEAX@Z			; single_step_trap
PUBLIC	?nmi_trap@@YAX_KPEAX@Z				; nmi_trap
PUBLIC	?breakpoint_trap@@YAX_KPEAX@Z			; breakpoint_trap
PUBLIC	?overflow_trap@@YAX_KPEAX@Z			; overflow_trap
PUBLIC	?bounds_check_fault@@YAX_KPEAX@Z		; bounds_check_fault
PUBLIC	?invalid_opcode_fault@@YAX_KPEAX@Z		; invalid_opcode_fault
PUBLIC	?no_device_fault@@YAX_KPEAX@Z			; no_device_fault
PUBLIC	?double_fault_abort@@YAX_KPEAX@Z		; double_fault_abort
PUBLIC	?invalid_tss_fault@@YAX_KPEAX@Z			; invalid_tss_fault
PUBLIC	?no_segment_fault@@YAX_KPEAX@Z			; no_segment_fault
PUBLIC	?stack_fault@@YAX_KPEAX@Z			; stack_fault
PUBLIC	?general_protection_fault@@YAX_KPEAX@Z		; general_protection_fault
PUBLIC	?page_fault@@YAX_KPEAX@Z			; page_fault
PUBLIC	?fpu_fault@@YAX_KPEAX@Z				; fpu_fault
PUBLIC	?alignment_check_fault@@YAX_KPEAX@Z		; alignment_check_fault
PUBLIC	?machine_check_abort@@YAX_KPEAX@Z		; machine_check_abort
PUBLIC	?simd_fpu_fault@@YAX_KPEAX@Z			; simd_fpu_fault
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuPerCPUGetCpuID@@YAEXZ:PROC			; AuPerCPUGetCpuID
EXTRN	x64_cli:PROC
EXTRN	x64_read_cr2:PROC
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuGetPhysicalAddress:PROC
EXTRN	setvect:PROC
EXTRN	SeTextOut:PROC
pdata	SEGMENT
$pdata$?x86_64_exception_init@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+312
	DD	imagerel $unwind$?x86_64_exception_init@@YAXXZ
$pdata$?panic@@YAXPEBDZZ DD imagerel $LN3
	DD	imagerel $LN3+116
	DD	imagerel $unwind$?panic@@YAXPEBDZZ
$pdata$?divide_by_zero_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+135
	DD	imagerel $unwind$?divide_by_zero_fault@@YAX_KPEAX@Z
$pdata$?single_step_trap@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+48
	DD	imagerel $unwind$?single_step_trap@@YAX_KPEAX@Z
$pdata$?nmi_trap@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?nmi_trap@@YAX_KPEAX@Z
$pdata$?breakpoint_trap@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?breakpoint_trap@@YAX_KPEAX@Z
$pdata$?overflow_trap@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?overflow_trap@@YAX_KPEAX@Z
$pdata$?bounds_check_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?bounds_check_fault@@YAX_KPEAX@Z
$pdata$?invalid_opcode_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+177
	DD	imagerel $unwind$?invalid_opcode_fault@@YAX_KPEAX@Z
$pdata$?no_device_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?no_device_fault@@YAX_KPEAX@Z
$pdata$?double_fault_abort@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?double_fault_abort@@YAX_KPEAX@Z
$pdata$?invalid_tss_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?invalid_tss_fault@@YAX_KPEAX@Z
$pdata$?no_segment_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?no_segment_fault@@YAX_KPEAX@Z
$pdata$?stack_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?stack_fault@@YAX_KPEAX@Z
$pdata$?general_protection_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+215
	DD	imagerel $unwind$?general_protection_fault@@YAX_KPEAX@Z
$pdata$?page_fault@@YAX_KPEAX@Z DD imagerel $LN19
	DD	imagerel $LN19+660
	DD	imagerel $unwind$?page_fault@@YAX_KPEAX@Z
$pdata$?fpu_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?fpu_fault@@YAX_KPEAX@Z
$pdata$?alignment_check_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?alignment_check_fault@@YAX_KPEAX@Z
$pdata$?machine_check_abort@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?machine_check_abort@@YAX_KPEAX@Z
$pdata$?simd_fpu_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+135
	DD	imagerel $unwind$?simd_fpu_fault@@YAX_KPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?x86_64_exception_init@@YAXXZ DD 010401H
	DD	04204H
$unwind$?panic@@YAXPEBDZZ DD 011801H
	DD	04218H
$unwind$?divide_by_zero_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
$unwind$?single_step_trap@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
$unwind$?nmi_trap@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?breakpoint_trap@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?overflow_trap@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?bounds_check_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?invalid_opcode_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
$unwind$?no_device_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?double_fault_abort@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?invalid_tss_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?no_segment_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?stack_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?general_protection_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
$unwind$?page_fault@@YAX_KPEAX@Z DD 021101H
	DD	0130111H
$unwind$?fpu_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?alignment_check_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?machine_check_abort@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?simd_fpu_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
v$ = 64
p$ = 72
?simd_fpu_fault@@YAX_KPEAX@Z PROC			; simd_fpu_fault

; 249  : void simd_fpu_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 250  : 	x64_cli();

	call	x64_cli

; 251  : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)p;

	mov	rax, QWORD PTR p$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 252  : 	panic("\n SIMD FPU Faul \r\nt");

	lea	rcx, OFFSET FLAT:$SG4056
	call	?panic@@YAXPEBDZZ			; panic

; 253  : 	SeTextOut("\n__CPU Informations__ \n");

	lea	rcx, OFFSET FLAT:$SG4057
	call	SeTextOut

; 254  : 	SeTextOut(" RIP -> %x \n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG4058
	call	SeTextOut

; 255  : 	SeTextOut(" RSP -> %x \n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG4059
	call	SeTextOut

; 256  : 	SeTextOut(" RFLAGS -> %x \n", frame->rflags);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+32]
	lea	rcx, OFFSET FLAT:$SG4060
	call	SeTextOut

; 257  : 	SeTextOut(" MXCSR bit  -- ");

	lea	rcx, OFFSET FLAT:$SG4061
	call	SeTextOut
$LN2@simd_fpu_f:

; 258  : 	for (;;);

	jmp	SHORT $LN2@simd_fpu_f

; 259  : }

	add	rsp, 56					; 00000038H
	ret	0
?simd_fpu_fault@@YAX_KPEAX@Z ENDP			; simd_fpu_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?machine_check_abort@@YAX_KPEAX@Z PROC			; machine_check_abort

; 242  : void machine_check_abort(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 243  : 	x64_cli();

	call	x64_cli

; 244  : 	panic("\nMachine Check Abort");

	lea	rcx, OFFSET FLAT:$SG4046
	call	?panic@@YAXPEBDZZ			; panic
$LN2@machine_ch:

; 245  : 	for (;;);

	jmp	SHORT $LN2@machine_ch

; 246  : }

	add	rsp, 40					; 00000028H
	ret	0
?machine_check_abort@@YAX_KPEAX@Z ENDP			; machine_check_abort
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?alignment_check_fault@@YAX_KPEAX@Z PROC		; alignment_check_fault

; 235  : void alignment_check_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 236  : 	x64_cli();

	call	x64_cli

; 237  : 	panic("\nAlignment Check Fault at address ");

	lea	rcx, OFFSET FLAT:$SG4038
	call	?panic@@YAXPEBDZZ			; panic
$LN2@alignment_:

; 238  : 	for (;;);

	jmp	SHORT $LN2@alignment_

; 239  : }

	add	rsp, 40					; 00000028H
	ret	0
?alignment_check_fault@@YAX_KPEAX@Z ENDP		; alignment_check_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
vector$ = 48
p$ = 56
?fpu_fault@@YAX_KPEAX@Z PROC				; fpu_fault

; 227  : void fpu_fault(size_t vector, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 228  : 	x64_cli();

	call	x64_cli

; 229  : 	panic("\nFPU Fault");

	lea	rcx, OFFSET FLAT:$SG4030
	call	?panic@@YAXPEBDZZ			; panic
$LN2@fpu_fault:

; 230  : 	for (;;);

	jmp	SHORT $LN2@fpu_fault

; 231  : }

	add	rsp, 40					; 00000028H
	ret	0
?fpu_fault@@YAX_KPEAX@Z ENDP				; fpu_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
_mapped$ = 32
frame$ = 40
tv68 = 48
proc$ = 56
vpage$1 = 64
us$ = 72
vaddr_aligned$ = 80
id$ = 88
resv$ = 92
present$ = 96
rw$ = 100
thr$ = 104
vaddr_$ = 112
vaddr$ = 120
phys$2 = 128
vector$ = 160
param$ = 168
?page_fault@@YAX_KPEAX@Z PROC				; page_fault

; 172  : void page_fault(size_t vector, void* param){

$LN19:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 152				; 00000098H

; 173  : 	x64_cli();

	call	x64_cli

; 174  : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)param;

	mov	rax, QWORD PTR param$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 175  : 	void* vaddr = (void*)x64_read_cr2();

	call	x64_read_cr2
	mov	QWORD PTR vaddr$[rsp], rax

; 176  : 
; 177  : 	int present = !(frame->error & 0x1);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 1
	test	rax, rax
	jne	SHORT $LN17@page_fault
	mov	DWORD PTR tv68[rsp], 1
	jmp	SHORT $LN18@page_fault
$LN17@page_fault:
	mov	DWORD PTR tv68[rsp], 0
$LN18@page_fault:
	mov	eax, DWORD PTR tv68[rsp]
	mov	DWORD PTR present$[rsp], eax

; 178  : 	int rw = frame->error & 0x2;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 2
	mov	DWORD PTR rw$[rsp], eax

; 179  : 	int us = frame->error & 0x4;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 4
	mov	DWORD PTR us$[rsp], eax

; 180  : 	int resv = frame->error & 0x8;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 8
	mov	DWORD PTR resv$[rsp], eax

; 181  : 	int id = frame->error & 0x10;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 16
	mov	DWORD PTR id$[rsp], eax

; 182  : 
; 183  : 	panic("Page Fault !! \r\n");

	lea	rcx, OFFSET FLAT:$SG3988
	call	?panic@@YAXPEBDZZ			; panic

; 184  : 	
; 185  : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 186  : 	AuProcess *proc = NULL;

	mov	QWORD PTR proc$[rsp], 0

; 187  : 	if (thr) {

	cmp	QWORD PTR thr$[rsp], 0
	je	SHORT $LN14@page_fault

; 188  : 		proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 189  : 		if (proc) {

	cmp	QWORD PTR proc$[rsp], 0
	je	SHORT $LN13@page_fault

; 190  : 			SeTextOut("Process pid -> %d \r\n", proc->proc_id);

	mov	rax, QWORD PTR proc$[rsp]
	mov	edx, DWORD PTR [rax]
	lea	rcx, OFFSET FLAT:$SG3993
	call	SeTextOut

; 191  : 			SeTextOut("Process name -> %s \r\n", proc->name);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG3994
	call	SeTextOut
$LN13@page_fault:
$LN14@page_fault:

; 192  : 		}
; 193  : 	}
; 194  : 	
; 195  : 	uint64_t vaddr_ = (uint64_t)vaddr;

	mov	rax, QWORD PTR vaddr$[rsp]
	mov	QWORD PTR vaddr_$[rsp], rax

; 196  : 	uint64_t vaddr_aligned = VIRT_ADDR_ALIGN(vaddr_);

	mov	rax, QWORD PTR vaddr_$[rsp]
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR vaddr_aligned$[rsp], rax

; 197  : 	bool _mapped = false;

	mov	BYTE PTR _mapped$[rsp], 0

; 198  : 	if (present) {

	cmp	DWORD PTR present$[rsp], 0
	je	SHORT $LN12@page_fault

; 199  : 		SeTextOut("Page Not Present \r\n");

	lea	rcx, OFFSET FLAT:$SG4000
	call	SeTextOut
	jmp	$LN11@page_fault
$LN12@page_fault:

; 200  : 	}
; 201  : 	else if (rw) {

	cmp	DWORD PTR rw$[rsp], 0
	je	$LN10@page_fault

; 202  : 		SeTextOut("Read/Write \r\n");

	lea	rcx, OFFSET FLAT:$SG4003
	call	SeTextOut

; 203  : 		void* phys = AuGetPhysicalAddress(vaddr_aligned);

	mov	rcx, QWORD PTR vaddr_aligned$[rsp]
	call	AuGetPhysicalAddress
	mov	QWORD PTR phys$2[rsp], rax

; 204  : 		AuVPage *vpage = AuVmmngrGetPage(vaddr_aligned, 0, 0);

	xor	r8d, r8d
	xor	edx, edx
	mov	rcx, QWORD PTR vaddr_aligned$[rsp]
	call	AuVmmngrGetPage
	mov	QWORD PTR vpage$1[rsp], rax

; 205  : 		SeTextOut("VPage rw -> %d , user -> %d \r\n", vpage->bits.writable, vpage->bits.user);

	mov	rax, QWORD PTR vpage$1[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 2
	and	rax, 1
	mov	rcx, QWORD PTR vpage$1[rsp]
	mov	rcx, QWORD PTR [rcx]
	shr	rcx, 1
	and	rcx, 1
	mov	r8, rax
	mov	rdx, rcx
	lea	rcx, OFFSET FLAT:$SG4006
	call	SeTextOut

; 206  : 		SeTextOut("VPage phys1-> %x, phys2-> %x \r\n", phys, (vpage->bits.page << PAGE_SHIFT));

	mov	rax, QWORD PTR vpage$1[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 12
	and	rax, 268435455				; 0fffffffH
	shl	rax, 12
	mov	r8, rax
	mov	rdx, QWORD PTR phys$2[rsp]
	lea	rcx, OFFSET FLAT:$SG4007
	call	SeTextOut
	jmp	SHORT $LN9@page_fault
$LN10@page_fault:

; 207  : 	}
; 208  : 	else if (us)

	cmp	DWORD PTR us$[rsp], 0
	je	SHORT $LN8@page_fault

; 209  : 		SeTextOut("User bit not set \r\n");

	lea	rcx, OFFSET FLAT:$SG4010
	call	SeTextOut
	jmp	SHORT $LN7@page_fault
$LN8@page_fault:

; 210  : 	else if (resv)

	cmp	DWORD PTR resv$[rsp], 0
	je	SHORT $LN6@page_fault

; 211  : 		SeTextOut("Reserved page \r\n");

	lea	rcx, OFFSET FLAT:$SG4013
	call	SeTextOut
	jmp	SHORT $LN5@page_fault
$LN6@page_fault:

; 212  : 	else if (id)

	cmp	DWORD PTR id$[rsp], 0
	je	SHORT $LN4@page_fault

; 213  : 		SeTextOut("Invalid page \r\n");

	lea	rcx, OFFSET FLAT:$SG4016
	call	SeTextOut
$LN4@page_fault:
$LN5@page_fault:
$LN7@page_fault:
$LN9@page_fault:
$LN11@page_fault:

; 214  : 
; 215  : 	SeTextOut("Virtual Address -> %x \r\n", vaddr_);

	mov	rdx, QWORD PTR vaddr_$[rsp]
	lea	rcx, OFFSET FLAT:$SG4017
	call	SeTextOut

; 216  : 	SeTextOut("Virtual Address aligned -> %x \r\n", vaddr_aligned);

	mov	rdx, QWORD PTR vaddr_aligned$[rsp]
	lea	rcx, OFFSET FLAT:$SG4018
	call	SeTextOut

; 217  : 	SeTextOut("RSP -> %x \r\n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG4019
	call	SeTextOut

; 218  : 	SeTextOut("RIP -> %x \r\n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG4020
	call	SeTextOut

; 219  : 	SeTextOut("CS -> %x, SS -> %x \r\n", frame->cs, frame->ss);

	mov	rax, QWORD PTR frame$[rsp]
	mov	r8, QWORD PTR [rax+48]
	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+24]
	lea	rcx, OFFSET FLAT:$SG4021
	call	SeTextOut

; 220  : 	if (!_mapped) {

	movzx	eax, BYTE PTR _mapped$[rsp]
	test	eax, eax
	jne	SHORT $LN3@page_fault
$LN2@page_fault:

; 221  : 		for (;;);

	jmp	SHORT $LN2@page_fault
$LN3@page_fault:

; 222  : 	}
; 223  : }

	add	rsp, 152				; 00000098H
	ret	0
?page_fault@@YAX_KPEAX@Z ENDP				; page_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
tv82 = 40
v$ = 64
p$ = 72
?general_protection_fault@@YAX_KPEAX@Z PROC		; general_protection_fault

; 155  : void general_protection_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 156  : 	x64_cli();

	call	x64_cli

; 157  : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)p;

	mov	rax, QWORD PTR p$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 158  : 	panic("Genral Protection Fault \r\n");

	lea	rcx, OFFSET FLAT:$SG3964
	call	?panic@@YAXPEBDZZ			; panic

; 159  : 	SeTextOut("General Protection Fault \r\n");

	lea	rcx, OFFSET FLAT:$SG3965
	call	SeTextOut

; 160  : 	SeTextOut("__PROCESSOR TRACE__ \r\n");

	lea	rcx, OFFSET FLAT:$SG3966
	call	SeTextOut

; 161  : 	SeTextOut("RIP -> %x \r\n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG3967
	call	SeTextOut

; 162  : 	SeTextOut("Stack -> %x \r\n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG3968
	call	SeTextOut

; 163  : 	SeTextOut("RFLAGS -> %x \r\n", frame->rflags);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+32]
	lea	rcx, OFFSET FLAT:$SG3969
	call	SeTextOut

; 164  : 	SeTextOut("CS -> %x, SS -> %x \r\n", frame->cs, frame->ss);

	mov	rax, QWORD PTR frame$[rsp]
	mov	r8, QWORD PTR [rax+48]
	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+24]
	lea	rcx, OFFSET FLAT:$SG3970
	call	SeTextOut

; 165  : 	SeTextOut("Current thread ->id %d , %s\r\n", AuGetCurrentThread()->id, AuGetCurrentThread()->name);

	call	AuGetCurrentThread
	add	rax, 284				; 0000011cH
	mov	QWORD PTR tv82[rsp], rax
	call	AuGetCurrentThread
	movzx	eax, WORD PTR [rax+301]
	mov	rcx, QWORD PTR tv82[rsp]
	mov	r8, rcx
	mov	edx, eax
	lea	rcx, OFFSET FLAT:$SG3971
	call	SeTextOut
$LN2@general_pr:

; 166  : 	for (;;);

	jmp	SHORT $LN2@general_pr

; 167  : }

	add	rsp, 56					; 00000038H
	ret	0
?general_protection_fault@@YAX_KPEAX@Z ENDP		; general_protection_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?stack_fault@@YAX_KPEAX@Z PROC				; stack_fault

; 147  : void stack_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 148  : 	x64_cli();

	call	x64_cli

; 149  : 	panic("\nStack Fault at ");

	lea	rcx, OFFSET FLAT:$SG3954
	call	?panic@@YAXPEBDZZ			; panic
$LN2@stack_faul:

; 150  : 	for (;;);

	jmp	SHORT $LN2@stack_faul

; 151  : }

	add	rsp, 40					; 00000028H
	ret	0
?stack_fault@@YAX_KPEAX@Z ENDP				; stack_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?no_segment_fault@@YAX_KPEAX@Z PROC			; no_segment_fault

; 140  : void no_segment_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 141  : 	x64_cli();

	call	x64_cli

; 142  : 	panic("\nNo Segment Fault");

	lea	rcx, OFFSET FLAT:$SG3946
	call	?panic@@YAXPEBDZZ			; panic
$LN2@no_segment:

; 143  : 	for (;;);

	jmp	SHORT $LN2@no_segment

; 144  : }

	add	rsp, 40					; 00000028H
	ret	0
?no_segment_fault@@YAX_KPEAX@Z ENDP			; no_segment_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?invalid_tss_fault@@YAX_KPEAX@Z PROC			; invalid_tss_fault

; 133  : void invalid_tss_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 134  : 	x64_cli();

	call	x64_cli

; 135  : 	panic("\nInvalid TSS Fault ");

	lea	rcx, OFFSET FLAT:$SG3938
	call	?panic@@YAXPEBDZZ			; panic
$LN2@invalid_ts:

; 136  : 	for (;;);

	jmp	SHORT $LN2@invalid_ts

; 137  : }

	add	rsp, 40					; 00000028H
	ret	0
?invalid_tss_fault@@YAX_KPEAX@Z ENDP			; invalid_tss_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?double_fault_abort@@YAX_KPEAX@Z PROC			; double_fault_abort

; 126  : void double_fault_abort(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 127  : 	x64_cli();

	call	x64_cli

; 128  : 	panic("\nDouble Fault Abort");

	lea	rcx, OFFSET FLAT:$SG3930
	call	?panic@@YAXPEBDZZ			; panic
$LN2@double_fau:

; 129  : 	for (;;);

	jmp	SHORT $LN2@double_fau

; 130  : }

	add	rsp, 40					; 00000028H
	ret	0
?double_fault_abort@@YAX_KPEAX@Z ENDP			; double_fault_abort
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?no_device_fault@@YAX_KPEAX@Z PROC			; no_device_fault

; 119  : void no_device_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 120  : 	x64_cli();

	call	x64_cli

; 121  : 	panic("\nNo Device Fault");

	lea	rcx, OFFSET FLAT:$SG3922
	call	?panic@@YAXPEBDZZ			; panic
$LN2@no_device_:

; 122  : 	for (;;);

	jmp	SHORT $LN2@no_device_

; 123  : }

	add	rsp, 40					; 00000028H
	ret	0
?no_device_fault@@YAX_KPEAX@Z ENDP			; no_device_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
v$ = 64
p$ = 72
?invalid_opcode_fault@@YAX_KPEAX@Z PROC			; invalid_opcode_fault

; 104  : void invalid_opcode_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 105  : 	x64_cli();

	call	x64_cli

; 106  : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)p;

	mov	rax, QWORD PTR p$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 107  : 	panic("Invalid Opcode Fault \r\n");

	lea	rcx, OFFSET FLAT:$SG3907
	call	?panic@@YAXPEBDZZ			; panic

; 108  : 	SeTextOut("Invalid Opcode Fault \r\n");

	lea	rcx, OFFSET FLAT:$SG3908
	call	SeTextOut

; 109  : 	SeTextOut("__PROCESSOR TRACE__ \r\n");

	lea	rcx, OFFSET FLAT:$SG3909
	call	SeTextOut

; 110  : 	SeTextOut("RIP -> %x\n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG3910
	call	SeTextOut

; 111  : 	SeTextOut("Stack -> %x\n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG3911
	call	SeTextOut

; 112  : 	SeTextOut("RFLAGS -> %x\n", frame->rflags);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+32]
	lea	rcx, OFFSET FLAT:$SG3912
	call	SeTextOut

; 113  : 	SeTextOut("CS -> %x\n", frame->cs);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+24]
	lea	rcx, OFFSET FLAT:$SG3913
	call	SeTextOut

; 114  : 	SeTextOut("SS -> %x\n", frame->ss);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+48]
	lea	rcx, OFFSET FLAT:$SG3914
	call	SeTextOut
$LN2@invalid_op:

; 115  : 	for (;;);

	jmp	SHORT $LN2@invalid_op

; 116  : }

	add	rsp, 56					; 00000038H
	ret	0
?invalid_opcode_fault@@YAX_KPEAX@Z ENDP			; invalid_opcode_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?bounds_check_fault@@YAX_KPEAX@Z PROC			; bounds_check_fault

; 97   : void bounds_check_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 98   : 	x64_cli();

	call	x64_cli

; 99   : 	panic("\nBound Check Fault");

	lea	rcx, OFFSET FLAT:$SG3897
	call	?panic@@YAXPEBDZZ			; panic
$LN2@bounds_che:

; 100  : 	for (;;);

	jmp	SHORT $LN2@bounds_che

; 101  : }

	add	rsp, 40					; 00000028H
	ret	0
?bounds_check_fault@@YAX_KPEAX@Z ENDP			; bounds_check_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?overflow_trap@@YAX_KPEAX@Z PROC			; overflow_trap

; 90   : void overflow_trap(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 91   : 	x64_cli();

	call	x64_cli

; 92   : 	panic("\nOverflow Trap");

	lea	rcx, OFFSET FLAT:$SG3889
	call	?panic@@YAXPEBDZZ			; panic
$LN2@overflow_t:

; 93   : 	for (;;);

	jmp	SHORT $LN2@overflow_t

; 94   : }

	add	rsp, 40					; 00000028H
	ret	0
?overflow_trap@@YAX_KPEAX@Z ENDP			; overflow_trap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
vector$ = 48
param$ = 56
?breakpoint_trap@@YAX_KPEAX@Z PROC			; breakpoint_trap

; 83   : void breakpoint_trap(size_t vector, void* param){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 84   : 	x64_cli();

	call	x64_cli

; 85   : 	panic("\nBreakpoint Trap");

	lea	rcx, OFFSET FLAT:$SG3881
	call	?panic@@YAXPEBDZZ			; panic
$LN2@breakpoint:

; 86   : 	for (;;);

	jmp	SHORT $LN2@breakpoint

; 87   : }

	add	rsp, 40					; 00000028H
	ret	0
?breakpoint_trap@@YAX_KPEAX@Z ENDP			; breakpoint_trap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
vector$ = 48
param$ = 56
?nmi_trap@@YAX_KPEAX@Z PROC				; nmi_trap

; 75   : void nmi_trap(size_t vector, void* param){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 76   : 	x64_cli();

	call	x64_cli

; 77   : 	panic("\nNMI [Non-Muskable-Interrupt] Trap");

	lea	rcx, OFFSET FLAT:$SG3873
	call	?panic@@YAXPEBDZZ			; panic
$LN2@nmi_trap:

; 78   : 	for (;;);

	jmp	SHORT $LN2@nmi_trap

; 79   : 
; 80   : }

	add	rsp, 40					; 00000028H
	ret	0
?nmi_trap@@YAX_KPEAX@Z ENDP				; nmi_trap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
vector$ = 64
param$ = 72
?single_step_trap@@YAX_KPEAX@Z PROC			; single_step_trap

; 68   : void single_step_trap(size_t vector, void* param) {

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 69   : 	x64_cli();

	call	x64_cli

; 70   : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)param;

	mov	rax, QWORD PTR param$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 71   : 	panic("\nSingle Step Trap");

	lea	rcx, OFFSET FLAT:$SG3865
	call	?panic@@YAXPEBDZZ			; panic
$LN2@single_ste:

; 72   : 	for (;;);

	jmp	SHORT $LN2@single_ste

; 73   : }

	add	rsp, 56					; 00000038H
	ret	0
?single_step_trap@@YAX_KPEAX@Z ENDP			; single_step_trap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
vector$ = 64
param$ = 72
?divide_by_zero_fault@@YAX_KPEAX@Z PROC			; divide_by_zero_fault

; 55   : void divide_by_zero_fault(size_t vector, void* param) {

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 56   : 	x64_cli();

	call	x64_cli

; 57   : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)param;

	mov	rax, QWORD PTR param$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 58   : 	panic("\nDivide by 0");

	lea	rcx, OFFSET FLAT:$SG3850
	call	?panic@@YAXPEBDZZ			; panic

; 59   : 	SeTextOut("Divide by 0 \r\n");

	lea	rcx, OFFSET FLAT:$SG3851
	call	SeTextOut

; 60   : 	SeTextOut("__PROCESSOR_DATA__ \r\n");

	lea	rcx, OFFSET FLAT:$SG3852
	call	SeTextOut

; 61   : 	SeTextOut("RIP -> %x \r\n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG3853
	call	SeTextOut

; 62   : 	SeTextOut("RSP -> %x \r\n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG3854
	call	SeTextOut

; 63   : 	SeTextOut("RFLAGS -> %x \r\n", frame->rflags);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+32]
	lea	rcx, OFFSET FLAT:$SG3855
	call	SeTextOut
$LN2@divide_by_:

; 64   : 
; 65   : 	for (;;);

	jmp	SHORT $LN2@divide_by_

; 66   : }

	add	rsp, 56					; 00000038H
	ret	0
?divide_by_zero_fault@@YAX_KPEAX@Z ENDP			; divide_by_zero_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
msg$ = 48
?panic@@YAXPEBDZZ PROC					; panic

; 46   : void panic(const char* msg, ...) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 40					; 00000028H

; 47   : 	SeTextOut("\r\n ***ARCH x86_64 : Kernel Panic!!! *** \r\n");

	lea	rcx, OFFSET FLAT:$SG3838
	call	SeTextOut

; 48   : 	SeTextOut("[Aurora Kernel]: We are sorry to say that, a processor invalid exception has occured \r\n");

	lea	rcx, OFFSET FLAT:$SG3839
	call	SeTextOut

; 49   : 	SeTextOut("[Aurora Kernel]: please inform it to the master of the kernel \r\n");

	lea	rcx, OFFSET FLAT:$SG3840
	call	SeTextOut

; 50   : 	SeTextOut("[Aurora Kernel]: Below is the code of exception \r\n");

	lea	rcx, OFFSET FLAT:$SG3841
	call	SeTextOut

; 51   : 	SeTextOut("[Aurora Kernel]: Current Processor id -> %d \r\n", AuPerCPUGetCpuID());

	call	?AuPerCPUGetCpuID@@YAEXZ		; AuPerCPUGetCpuID
	movzx	eax, al
	mov	edx, eax
	lea	rcx, OFFSET FLAT:$SG3842
	call	SeTextOut

; 52   : 	SeTextOut(" %s \r\n", msg);

	mov	rdx, QWORD PTR msg$[rsp]
	lea	rcx, OFFSET FLAT:$SG3843
	call	SeTextOut

; 53   : }

	add	rsp, 40					; 00000028H
	ret	0
?panic@@YAXPEBDZZ ENDP					; panic
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
?x86_64_exception_init@@YAXXZ PROC			; x86_64_exception_init

; 265  : void x86_64_exception_init() {

$LN3:
	sub	rsp, 40					; 00000028H

; 266  : 	setvect(0, divide_by_zero_fault);

	lea	rdx, OFFSET FLAT:?divide_by_zero_fault@@YAX_KPEAX@Z ; divide_by_zero_fault
	xor	ecx, ecx
	call	setvect

; 267  : 	setvect(1, single_step_trap);

	lea	rdx, OFFSET FLAT:?single_step_trap@@YAX_KPEAX@Z ; single_step_trap
	mov	ecx, 1
	call	setvect

; 268  : 	setvect(2, nmi_trap);

	lea	rdx, OFFSET FLAT:?nmi_trap@@YAX_KPEAX@Z	; nmi_trap
	mov	ecx, 2
	call	setvect

; 269  : 	setvect(3, breakpoint_trap);

	lea	rdx, OFFSET FLAT:?breakpoint_trap@@YAX_KPEAX@Z ; breakpoint_trap
	mov	ecx, 3
	call	setvect

; 270  : 	setvect(4, overflow_trap);

	lea	rdx, OFFSET FLAT:?overflow_trap@@YAX_KPEAX@Z ; overflow_trap
	mov	ecx, 4
	call	setvect

; 271  : 	setvect(5, bounds_check_fault);

	lea	rdx, OFFSET FLAT:?bounds_check_fault@@YAX_KPEAX@Z ; bounds_check_fault
	mov	ecx, 5
	call	setvect

; 272  : 	setvect(6, invalid_opcode_fault);

	lea	rdx, OFFSET FLAT:?invalid_opcode_fault@@YAX_KPEAX@Z ; invalid_opcode_fault
	mov	ecx, 6
	call	setvect

; 273  : 	setvect(7, no_device_fault);

	lea	rdx, OFFSET FLAT:?no_device_fault@@YAX_KPEAX@Z ; no_device_fault
	mov	ecx, 7
	call	setvect

; 274  : 	setvect(8, double_fault_abort);

	lea	rdx, OFFSET FLAT:?double_fault_abort@@YAX_KPEAX@Z ; double_fault_abort
	mov	ecx, 8
	call	setvect

; 275  : 	setvect(10, invalid_tss_fault);

	lea	rdx, OFFSET FLAT:?invalid_tss_fault@@YAX_KPEAX@Z ; invalid_tss_fault
	mov	ecx, 10
	call	setvect

; 276  : 	setvect(11, no_segment_fault);

	lea	rdx, OFFSET FLAT:?no_segment_fault@@YAX_KPEAX@Z ; no_segment_fault
	mov	ecx, 11
	call	setvect

; 277  : 	setvect(12, stack_fault);

	lea	rdx, OFFSET FLAT:?stack_fault@@YAX_KPEAX@Z ; stack_fault
	mov	ecx, 12
	call	setvect

; 278  : 	setvect(13, general_protection_fault);

	lea	rdx, OFFSET FLAT:?general_protection_fault@@YAX_KPEAX@Z ; general_protection_fault
	mov	ecx, 13
	call	setvect

; 279  : 	setvect(14, page_fault);

	lea	rdx, OFFSET FLAT:?page_fault@@YAX_KPEAX@Z ; page_fault
	mov	ecx, 14
	call	setvect

; 280  : 	setvect(16, fpu_fault);

	lea	rdx, OFFSET FLAT:?fpu_fault@@YAX_KPEAX@Z ; fpu_fault
	mov	ecx, 16
	call	setvect

; 281  : 	setvect(17, alignment_check_fault);

	lea	rdx, OFFSET FLAT:?alignment_check_fault@@YAX_KPEAX@Z ; alignment_check_fault
	mov	ecx, 17
	call	setvect

; 282  : 	setvect(18, machine_check_abort);

	lea	rdx, OFFSET FLAT:?machine_check_abort@@YAX_KPEAX@Z ; machine_check_abort
	mov	ecx, 18
	call	setvect

; 283  : 	setvect(19, simd_fpu_fault);

	lea	rdx, OFFSET FLAT:?simd_fpu_fault@@YAX_KPEAX@Z ; simd_fpu_fault
	mov	ecx, 19
	call	setvect

; 284  : }

	add	rsp, 40					; 00000028H
	ret	0
?x86_64_exception_init@@YAXXZ ENDP			; x86_64_exception_init
_TEXT	ENDS
END
