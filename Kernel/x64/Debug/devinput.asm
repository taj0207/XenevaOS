; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?mice_@@3PEAU__VFS_NODE__@@EA			; mice_
PUBLIC	?kybrd_@@3PEAU__VFS_NODE__@@EA			; kybrd_
_BSS	SEGMENT
?mice_@@3PEAU__VFS_NODE__@@EA DQ 01H DUP (?)		; mice_
?kybrd_@@3PEAU__VFS_NODE__@@EA DQ 01H DUP (?)		; kybrd_
_BSS	ENDS
CONST	SEGMENT
$SG3775	DB	'Mouse ioCtl ', 0dH, 0aH, 00H
	ORG $+1
$SG3790	DB	'/dev', 00H
	ORG $+3
$SG3798	DB	'mice', 00H
	ORG $+3
$SG3799	DB	'/', 00H
	ORG $+2
$SG3806	DB	'kybrd', 00H
	ORG $+2
$SG3807	DB	'/', 00H
CONST	ENDS
PUBLIC	?AuDevInputInitialise@@YAXXZ			; AuDevInputInitialise
PUBLIC	AuDevReadMice
PUBLIC	AuDevWriteMice
PUBLIC	AuDevReadKybrd
PUBLIC	AuDevWriteKybrd
PUBLIC	?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputMiceWrite
PUBLIC	?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputMiceRead
PUBLIC	?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputKybrdWrite
PUBLIC	?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputKybrdRead
PUBLIC	?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; AuDevMouseIoControl
EXTRN	AuVFSFind:PROC
EXTRN	AuDevFSAddFile:PROC
EXTRN	strcpy:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	kmalloc:PROC
EXTRN	?AuPS2MouseSetPos@@YAXHH@Z:PROC			; AuPS2MouseSetPos
EXTRN	SeTextOut:PROC
EXTRN	x64_cli:PROC
pdata	SEGMENT
$pdata$?AuDevInputInitialise@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+456
	DD	imagerel $unwind$?AuDevInputInitialise@@YAXXZ
$pdata$AuDevReadMice DD imagerel $LN4
	DD	imagerel $LN4+77
	DD	imagerel $unwind$AuDevReadMice
$pdata$AuDevWriteMice DD imagerel $LN4
	DD	imagerel $LN4+53
	DD	imagerel $unwind$AuDevWriteMice
$pdata$AuDevReadKybrd DD imagerel $LN4
	DD	imagerel $LN4+77
	DD	imagerel $unwind$AuDevReadKybrd
$pdata$AuDevWriteKybrd DD imagerel $LN4
	DD	imagerel $LN4+53
	DD	imagerel $unwind$AuDevWriteKybrd
$pdata$?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN5
	DD	imagerel $LN5+98
	DD	imagerel $unwind$?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
$pdata$?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN5
	DD	imagerel $LN5+116
	DD	imagerel $unwind$?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
$pdata$?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN5
	DD	imagerel $LN5+98
	DD	imagerel $unwind$?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
$pdata$?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN5
	DD	imagerel $LN5+116
	DD	imagerel $unwind$?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
$pdata$?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD imagerel $LN10
	DD	imagerel $LN10+129
	DD	imagerel $unwind$?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuDevInputInitialise@@YAXXZ DD 010401H
	DD	08204H
$unwind$AuDevReadMice DD 010901H
	DD	04209H
$unwind$AuDevWriteMice DD 010901H
	DD	04209H
$unwind$AuDevReadKybrd DD 010901H
	DD	04209H
$unwind$AuDevWriteKybrd DD 010901H
	DD	04209H
$unwind$?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 011801H
	DD	06218H
$unwind$?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 011801H
	DD	06218H
$unwind$?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 011801H
	DD	06218H
$unwind$?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 011801H
	DD	06218H
$unwind$?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD 011201H
	DD	06212H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
tv69 = 32
ioctl$ = 40
file$ = 64
code$ = 72
arg$ = 80
?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z PROC	; AuDevMouseIoControl

; 171  : int AuDevMouseIoControl(AuVFSNode* file, int code, void* arg) {

$LN10:
	mov	QWORD PTR [rsp+24], r8
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 172  : 	SeTextOut("Mouse ioCtl \r\n");

	lea	rcx, OFFSET FLAT:$SG3775
	call	SeTextOut

; 173  : 	if (!file)

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN7@AuDevMouse

; 174  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN8@AuDevMouse
$LN7@AuDevMouse:

; 175  : 	AuFileIOControl *ioctl = (AuFileIOControl*)arg;

	mov	rax, QWORD PTR arg$[rsp]
	mov	QWORD PTR ioctl$[rsp], rax

; 176  : 	if (!arg)

	cmp	QWORD PTR arg$[rsp], 0
	jne	SHORT $LN6@AuDevMouse

; 177  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN8@AuDevMouse
$LN6@AuDevMouse:

; 178  : 	if (ioctl->syscall_magic != AURORA_SYSCALL_MAGIC)

	mov	rax, QWORD PTR ioctl$[rsp]
	cmp	DWORD PTR [rax], 86056964		; 05212004H
	je	SHORT $LN5@AuDevMouse

; 179  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN8@AuDevMouse
$LN5@AuDevMouse:

; 180  : 
; 181  : 	switch (code)

	mov	eax, DWORD PTR code$[rsp]
	mov	DWORD PTR tv69[rsp], eax
	cmp	DWORD PTR tv69[rsp], 10
	je	SHORT $LN2@AuDevMouse
	jmp	SHORT $LN1@AuDevMouse
$LN2@AuDevMouse:

; 182  : 	{
; 183  : 	case MOUSE_IOCODE_SETPOS:
; 184  : 		AuPS2MouseSetPos(ioctl->uint_1, ioctl->uint_2);

	mov	rax, QWORD PTR ioctl$[rsp]
	mov	edx, DWORD PTR [rax+14]
	mov	rax, QWORD PTR ioctl$[rsp]
	mov	ecx, DWORD PTR [rax+10]
	call	?AuPS2MouseSetPos@@YAXHH@Z		; AuPS2MouseSetPos
$LN1@AuDevMouse:

; 185  : 		break;
; 186  : 	default:
; 187  : 		break;
; 188  : 	}
; 189  : 
; 190  : 	return 1;

	mov	eax, 1
$LN8@AuDevMouse:

; 191  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ENDP	; AuDevMouseIoControl
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
key_buf$ = 32
fs$ = 64
file$ = 72
buffer$ = 80
length$ = 88
?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC ; AuDevInputKybrdRead

; 153  : size_t AuDevInputKybrdRead(AuVFSNode *fs, AuVFSNode *file, uint64_t* buffer, uint32_t length){

$LN5:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 154  : 	x64_cli();

	call	x64_cli

; 155  : 	if (!file)

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN2@AuDevInput

; 156  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@AuDevInput
$LN2@AuDevInput:

; 157  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rsp], 0
	jne	SHORT $LN1@AuDevInput

; 158  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@AuDevInput
$LN1@AuDevInput:

; 159  : 	void* key_buf = file->device;

	mov	rax, QWORD PTR file$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR key_buf$[rsp], rax

; 160  : 	memcpy(buffer, key_buf, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR key_buf$[rsp]
	mov	rcx, QWORD PTR buffer$[rsp]
	call	memcpy

; 161  : 	memset(key_buf, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rcx, QWORD PTR key_buf$[rsp]
	call	memset

; 162  : 	return (sizeof(AuInputMessage));

	mov	eax, 26
$LN3@AuDevInput:

; 163  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP ; AuDevInputKybrdRead
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
key_buf$ = 32
fs$ = 64
file$ = 72
buffer$ = 80
length$ = 88
?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC ; AuDevInputKybrdWrite

; 135  : size_t AuDevInputKybrdWrite(AuVFSNode *fs, AuVFSNode *file, uint64_t* buffer, uint32_t length){

$LN5:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 136  : 	x64_cli();

	call	x64_cli

; 137  : 	if (!file)

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN2@AuDevInput

; 138  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@AuDevInput
$LN2@AuDevInput:

; 139  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rsp], 0
	jne	SHORT $LN1@AuDevInput

; 140  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@AuDevInput
$LN1@AuDevInput:

; 141  : 	void* key_buf = file->device;

	mov	rax, QWORD PTR file$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR key_buf$[rsp], rax

; 142  : 	memcpy(key_buf, buffer, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR buffer$[rsp]
	mov	rcx, QWORD PTR key_buf$[rsp]
	call	memcpy

; 143  : 	return (sizeof(AuInputMessage));

	mov	eax, 26
$LN3@AuDevInput:

; 144  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP ; AuDevInputKybrdWrite
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
mice_buf$ = 32
fs$ = 64
file$ = 72
buffer$ = 80
length$ = 88
?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC ; AuDevInputMiceRead

; 116  : size_t AuDevInputMiceRead(AuVFSNode *fs, AuVFSNode *file, uint64_t* buffer, uint32_t length){

$LN5:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 117  : 	x64_cli();

	call	x64_cli

; 118  : 	if (!file)

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN2@AuDevInput

; 119  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@AuDevInput
$LN2@AuDevInput:

; 120  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rsp], 0
	jne	SHORT $LN1@AuDevInput

; 121  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@AuDevInput
$LN1@AuDevInput:

; 122  : 	void* mice_buf = file->device;

	mov	rax, QWORD PTR file$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR mice_buf$[rsp], rax

; 123  : 	memcpy(buffer, mice_buf, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR mice_buf$[rsp]
	mov	rcx, QWORD PTR buffer$[rsp]
	call	memcpy

; 124  : 	memset(mice_buf, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rcx, QWORD PTR mice_buf$[rsp]
	call	memset

; 125  : 	return (sizeof(AuInputMessage));

	mov	eax, 26
$LN3@AuDevInput:

; 126  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP ; AuDevInputMiceRead
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
mice_buf$ = 32
fs$ = 64
file$ = 72
buffer$ = 80
length$ = 88
?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC ; AuDevInputMiceWrite

; 98   : size_t AuDevInputMiceWrite(AuVFSNode *fs, AuVFSNode *file, uint64_t* buffer, uint32_t length){

$LN5:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 99   : 	x64_cli();

	call	x64_cli

; 100  : 	if (!file)

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN2@AuDevInput

; 101  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@AuDevInput
$LN2@AuDevInput:

; 102  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rsp], 0
	jne	SHORT $LN1@AuDevInput

; 103  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@AuDevInput
$LN1@AuDevInput:

; 104  : 	void* mice_buf = file->device;

	mov	rax, QWORD PTR file$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR mice_buf$[rsp], rax

; 105  : 	memcpy(mice_buf, buffer, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR buffer$[rsp]
	mov	rcx, QWORD PTR mice_buf$[rsp]
	call	memcpy

; 106  : 	return (sizeof(AuInputMessage));

	mov	eax, 26
$LN3@AuDevInput:

; 107  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP ; AuDevInputMiceWrite
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
outmsg$ = 48
AuDevWriteKybrd PROC

; 85   : void AuDevWriteKybrd(AuInputMessage* outmsg) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 86   : 	if (!kybrd_)

	cmp	QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA, 0 ; kybrd_
	jne	SHORT $LN1@AuDevWrite

; 87   : 		return;

	jmp	SHORT $LN2@AuDevWrite
$LN1@AuDevWrite:

; 88   : 	memcpy(kybrd_->device, outmsg, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR outmsg$[rsp]
	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	rcx, QWORD PTR [rax+72]
	call	memcpy
$LN2@AuDevWrite:

; 89   : }

	add	rsp, 40					; 00000028H
	ret	0
AuDevWriteKybrd ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
inputmsg$ = 48
AuDevReadKybrd PROC

; 74   : void AuDevReadKybrd(AuInputMessage* inputmsg) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 75   : 	if (!kybrd_)

	cmp	QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA, 0 ; kybrd_
	jne	SHORT $LN1@AuDevReadK

; 76   : 		return;

	jmp	SHORT $LN2@AuDevReadK
$LN1@AuDevReadK:

; 77   : 	memcpy(inputmsg, kybrd_->device, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	rdx, QWORD PTR [rax+72]
	mov	rcx, QWORD PTR inputmsg$[rsp]
	call	memcpy

; 78   : 	memset(kybrd_->device, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	rcx, QWORD PTR [rax+72]
	call	memset
$LN2@AuDevReadK:

; 79   : }

	add	rsp, 40					; 00000028H
	ret	0
AuDevReadKybrd ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
outmsg$ = 48
AuDevWriteMice PROC

; 63   : void AuDevWriteMice(AuInputMessage* outmsg) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 64   : 	if (!mice_)

	cmp	QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA, 0 ; mice_
	jne	SHORT $LN1@AuDevWrite

; 65   : 		return;

	jmp	SHORT $LN2@AuDevWrite
$LN1@AuDevWrite:

; 66   : 	memcpy(mice_->device, outmsg, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR outmsg$[rsp]
	mov	rax, QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA ; mice_
	mov	rcx, QWORD PTR [rax+72]
	call	memcpy
$LN2@AuDevWrite:

; 67   : }

	add	rsp, 40					; 00000028H
	ret	0
AuDevWriteMice ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
inputmsg$ = 48
AuDevReadMice PROC

; 52   : void AuDevReadMice(AuInputMessage* inputmsg) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 53   : 	if (!mice_)

	cmp	QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA, 0 ; mice_
	jne	SHORT $LN1@AuDevReadM

; 54   : 		return;

	jmp	SHORT $LN2@AuDevReadM
$LN1@AuDevReadM:

; 55   : 	memcpy(inputmsg, mice_->device, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rax, QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA ; mice_
	mov	rdx, QWORD PTR [rax+72]
	mov	rcx, QWORD PTR inputmsg$[rsp]
	call	memcpy

; 56   : 	memset(mice_->device, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rax, QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA ; mice_
	mov	rcx, QWORD PTR [rax+72]
	call	memset
$LN2@AuDevReadM:

; 57   : }

	add	rsp, 40					; 00000028H
	ret	0
AuDevReadMice ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devinput.cpp
_TEXT	SEGMENT
node$ = 32
mice_input_buf$ = 40
keybuf$ = 48
devfs$ = 56
?AuDevInputInitialise@@YAXXZ PROC			; AuDevInputInitialise

; 197  : void AuDevInputInitialise() {

$LN3:
	sub	rsp, 72					; 00000048H

; 198  : 	AuVFSNode* devfs = AuVFSFind("/dev");

	lea	rcx, OFFSET FLAT:$SG3790
	call	AuVFSFind
	mov	QWORD PTR devfs$[rsp], rax

; 199  : 
; 200  : 	void* mice_input_buf = kmalloc(sizeof(AuInputMessage));

	mov	ecx, 26
	call	kmalloc
	mov	QWORD PTR mice_input_buf$[rsp], rax

; 201  : 	memset(mice_input_buf, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rcx, QWORD PTR mice_input_buf$[rsp]
	call	memset

; 202  : 	/* avoiding using pipe for latency issue */
; 203  : 	AuVFSNode* node = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 192				; 000000c0H
	call	kmalloc
	mov	QWORD PTR node$[rsp], rax

; 204  : 	memset(node, 0, sizeof(AuVFSNode));

	mov	r8d, 192				; 000000c0H
	xor	edx, edx
	mov	rcx, QWORD PTR node$[rsp]
	call	memset

; 205  : 	strcpy(node->filename, "mice");

	mov	rax, QWORD PTR node$[rsp]
	lea	rdx, OFFSET FLAT:$SG3798
	mov	rcx, rax
	call	strcpy

; 206  : 	node->flags |= FS_FLAG_DEVICE;

	mov	rax, QWORD PTR node$[rsp]
	movzx	eax, WORD PTR [rax+64]
	or	eax, 8
	mov	rcx, QWORD PTR node$[rsp]
	mov	WORD PTR [rcx+64], ax

; 207  : 	node->device = mice_input_buf;

	mov	rax, QWORD PTR node$[rsp]
	mov	rcx, QWORD PTR mice_input_buf$[rsp]
	mov	QWORD PTR [rax+72], rcx

; 208  : 	node->read = AuDevInputMiceRead;

	mov	rax, QWORD PTR node$[rsp]
	lea	rcx, OFFSET FLAT:?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputMiceRead
	mov	QWORD PTR [rax+104], rcx

; 209  : 	node->write = AuDevInputMiceWrite;

	mov	rax, QWORD PTR node$[rsp]
	lea	rcx, OFFSET FLAT:?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputMiceWrite
	mov	QWORD PTR [rax+112], rcx

; 210  : 	node->open = 0;

	mov	rax, QWORD PTR node$[rsp]
	mov	QWORD PTR [rax+88], 0

; 211  : 	node->close = 0;

	mov	rax, QWORD PTR node$[rsp]
	mov	QWORD PTR [rax+152], 0

; 212  : 	node->iocontrol = AuDevMouseIoControl;

	mov	rax, QWORD PTR node$[rsp]
	lea	rcx, OFFSET FLAT:?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; AuDevMouseIoControl
	mov	QWORD PTR [rax+184], rcx

; 213  : 	mice_ = node;

	mov	rax, QWORD PTR node$[rsp]
	mov	QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA, rax ; mice_

; 214  : 	AuDevFSAddFile(devfs, "/", mice_);

	mov	r8, QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA ; mice_
	lea	rdx, OFFSET FLAT:$SG3799
	mov	rcx, QWORD PTR devfs$[rsp]
	call	AuDevFSAddFile

; 215  : 
; 216  : 	void* keybuf = kmalloc(sizeof(AuInputMessage));

	mov	ecx, 26
	call	kmalloc
	mov	QWORD PTR keybuf$[rsp], rax

; 217  : 	memset(keybuf, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rcx, QWORD PTR keybuf$[rsp]
	call	memset

; 218  : 	
; 219  : 	kybrd_ = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 192				; 000000c0H
	call	kmalloc
	mov	QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA, rax ; kybrd_

; 220  : 	memset(kybrd_, 0, sizeof(AuVFSNode));

	mov	r8d, 192				; 000000c0H
	xor	edx, edx
	mov	rcx, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	call	memset

; 221  : 	strcpy(kybrd_->filename, "kybrd");

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	lea	rdx, OFFSET FLAT:$SG3806
	mov	rcx, rax
	call	strcpy

; 222  : 	kybrd_->flags |= FS_FLAG_DEVICE;

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	movzx	eax, WORD PTR [rax+64]
	or	eax, 8
	mov	rcx, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	WORD PTR [rcx+64], ax

; 223  : 	kybrd_->device = keybuf;

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	rcx, QWORD PTR keybuf$[rsp]
	mov	QWORD PTR [rax+72], rcx

; 224  : 	kybrd_->read = AuDevInputKybrdRead;

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	lea	rcx, OFFSET FLAT:?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputKybrdRead
	mov	QWORD PTR [rax+104], rcx

; 225  : 	kybrd_->write = AuDevInputKybrdWrite;

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	lea	rcx, OFFSET FLAT:?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputKybrdWrite
	mov	QWORD PTR [rax+112], rcx

; 226  : 	AuDevFSAddFile(devfs, "/", kybrd_);

	mov	r8, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	lea	rdx, OFFSET FLAT:$SG3807
	mov	rcx, QWORD PTR devfs$[rsp]
	call	AuDevFSAddFile

; 227  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuDevInputInitialise@@YAXXZ ENDP			; AuDevInputInitialise
_TEXT	ENDS
END
