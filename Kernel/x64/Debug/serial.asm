; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3580	DB	'.', 00H
CONST	ENDS
PUBLIC	?AuInitialiseSerial@@YAXXZ			; AuInitialiseSerial
PUBLIC	SeTextOut
PUBLIC	?SerialInterruptHandler@@YAX_KPEAX@Z		; SerialInterruptHandler
PUBLIC	?is_transmit_empty@@YAHXZ			; is_transmit_empty
PUBLIC	?WriteSerial@@YAXD@Z				; WriteSerial
PUBLIC	?DebugSerial@@YAXPEAD@Z				; DebugSerial
EXTRN	strlen:PROC
EXTRN	AuInterruptEnd:PROC
EXTRN	x64_inportb:PROC
EXTRN	x64_outportb:PROC
EXTRN	?sztoa@@YAPEAD_KPEADH@Z:PROC			; sztoa
EXTRN	?ftoa@@YAPEADME@Z:PROC				; ftoa
EXTRN	_fltused:DWORD
pdata	SEGMENT
$pdata$?AuInitialiseSerial@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+86
	DD	imagerel $unwind$?AuInitialiseSerial@@YAXXZ
$pdata$SeTextOut DD imagerel $LN25
	DD	imagerel $LN25+857
	DD	imagerel $unwind$SeTextOut
$pdata$?SerialInterruptHandler@@YAX_KPEAX@Z DD imagerel $LN3
	DD	imagerel $LN3+26
	DD	imagerel $unwind$?SerialInterruptHandler@@YAX_KPEAX@Z
$pdata$?is_transmit_empty@@YAHXZ DD imagerel $LN3
	DD	imagerel $LN3+24
	DD	imagerel $unwind$?is_transmit_empty@@YAHXZ
$pdata$?WriteSerial@@YAXD@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?WriteSerial@@YAXD@Z
$pdata$?DebugSerial@@YAXPEAD@Z DD imagerel $LN6
	DD	imagerel $LN6+85
	DD	imagerel $unwind$?DebugSerial@@YAXPEAD@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuInitialiseSerial@@YAXXZ DD 010401H
	DD	04204H
$unwind$SeTextOut DD 021b01H
	DD	023011bH
$unwind$?SerialInterruptHandler@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?is_transmit_empty@@YAHXZ DD 010401H
	DD	04204H
$unwind$?WriteSerial@@YAXD@Z DD 010801H
	DD	04208H
$unwind$?DebugSerial@@YAXPEAD@Z DD 010901H
	DD	06209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\serial.cpp
_TEXT	SEGMENT
i$1 = 32
tv65 = 40
string$ = 64
?DebugSerial@@YAXPEAD@Z PROC				; DebugSerial

; 72   : void DebugSerial(char* string) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 73   : 	for (int i = 0; i < strlen(string); i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@DebugSeria
$LN2@DebugSeria:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@DebugSeria:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv65[rsp], rax
	mov	rcx, QWORD PTR string$[rsp]
	call	strlen
	mov	rcx, QWORD PTR tv65[rsp]
	cmp	rcx, rax
	jae	SHORT $LN1@DebugSeria

; 74   : 		WriteSerial(string[i]);

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR string$[rsp]
	movzx	ecx, BYTE PTR [rcx+rax]
	call	?WriteSerial@@YAXD@Z			; WriteSerial
	jmp	SHORT $LN2@DebugSeria
$LN1@DebugSeria:

; 75   : }

	add	rsp, 56					; 00000038H
	ret	0
?DebugSerial@@YAXPEAD@Z ENDP				; DebugSerial
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\serial.cpp
_TEXT	SEGMENT
a$ = 48
?WriteSerial@@YAXD@Z PROC				; WriteSerial

; 67   : void WriteSerial(char a) {

$LN5:
	mov	BYTE PTR [rsp+8], cl
	sub	rsp, 40					; 00000028H
$LN2@WriteSeria:

; 68   : 	while (is_transmit_empty() == 0);

	call	?is_transmit_empty@@YAHXZ		; is_transmit_empty
	test	eax, eax
	jne	SHORT $LN1@WriteSeria
	jmp	SHORT $LN2@WriteSeria
$LN1@WriteSeria:

; 69   : 	x64_outportb(SERIAL_PORT, a);

	movzx	edx, BYTE PTR a$[rsp]
	mov	cx, 1016				; 000003f8H
	call	x64_outportb

; 70   : }

	add	rsp, 40					; 00000028H
	ret	0
?WriteSerial@@YAXD@Z ENDP				; WriteSerial
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\serial.cpp
_TEXT	SEGMENT
?is_transmit_empty@@YAHXZ PROC				; is_transmit_empty

; 63   : int is_transmit_empty() {

$LN3:
	sub	rsp, 40					; 00000028H

; 64   : 	return x64_inportb(SERIAL_PORT + 5) & 0x20;

	mov	cx, 1021				; 000003fdH
	call	x64_inportb
	movzx	eax, al
	and	eax, 32					; 00000020H

; 65   : }

	add	rsp, 40					; 00000028H
	ret	0
?is_transmit_empty@@YAHXZ ENDP				; is_transmit_empty
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\serial.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?SerialInterruptHandler@@YAX_KPEAX@Z PROC		; SerialInterruptHandler

; 42   : void SerialInterruptHandler(size_t v, void* p) {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 43   : 	AuInterruptEnd(4);

	mov	cl, 4
	call	AuInterruptEnd

; 44   : }

	add	rsp, 40					; 00000028H
	ret	0
?SerialInterruptHandler@@YAX_KPEAX@Z ENDP		; SerialInterruptHandler
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\serial.cpp
_TEXT	SEGMENT
c$1 = 32
args$ = 40
buf$2 = 48
buf$3 = 52
i$4 = 56
i$5 = 64
width$6 = 72
x$7 = 80
x$8 = 88
x$9 = 96
len$10 = 104
buffer$11 = 112
buffer$12 = 192
format$ = 288
SeTextOut PROC

; 81   : AU_EXTERN AU_EXPORT void SeTextOut(char* format, ...) {

$LN25:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 280				; 00000118H

; 82   : 
; 83   : 	_va_list_ args;
; 84   : 	va_start(args, format);

	lea	rax, QWORD PTR format$[rsp+8]
	mov	QWORD PTR args$[rsp], rax
$LN22@SeTextOut:

; 85   : 
; 86   : 	while (*format)

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	test	eax, eax
	je	$LN21@SeTextOut

; 87   : 	{
; 88   : 		if (*format == '%')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 37					; 00000025H
	jne	$LN20@SeTextOut

; 89   : 		{
; 90   : 			++format;

	mov	rax, QWORD PTR format$[rsp]
	inc	rax
	mov	QWORD PTR format$[rsp], rax

; 91   : 			if (*format == 'd')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 100				; 00000064H
	jne	$LN19@SeTextOut

; 92   : 			{
; 93   : 				size_t width = 0;

	mov	QWORD PTR width$6[rsp], 0

; 94   : 				if (format[1] == '.')

	mov	eax, 1
	imul	rax, rax, 1
	mov	rcx, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 46					; 0000002eH
	jne	$LN18@SeTextOut

; 95   : 				{
; 96   : 					for (size_t i = 2; format[i] >= '0' && format[i] <= '9'; ++i)

	mov	QWORD PTR i$4[rsp], 2
	jmp	SHORT $LN17@SeTextOut
$LN16@SeTextOut:
	mov	rax, QWORD PTR i$4[rsp]
	inc	rax
	mov	QWORD PTR i$4[rsp], rax
$LN17@SeTextOut:
	mov	rax, QWORD PTR i$4[rsp]
	mov	rcx, QWORD PTR format$[rsp]
	add	rcx, rax
	mov	rax, rcx
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 48					; 00000030H
	jl	SHORT $LN15@SeTextOut
	mov	rax, QWORD PTR i$4[rsp]
	mov	rcx, QWORD PTR format$[rsp]
	add	rcx, rax
	mov	rax, rcx
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 57					; 00000039H
	jg	SHORT $LN15@SeTextOut

; 97   : 					{
; 98   : 						width *= 10;

	imul	rax, QWORD PTR width$6[rsp], 10
	mov	QWORD PTR width$6[rsp], rax

; 99   : 						width += format[i] - '0';

	mov	rax, QWORD PTR i$4[rsp]
	mov	rcx, QWORD PTR format$[rsp]
	add	rcx, rax
	mov	rax, rcx
	movsx	eax, BYTE PTR [rax]
	sub	eax, 48					; 00000030H
	cdqe
	mov	rcx, QWORD PTR width$6[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR width$6[rsp], rax

; 100  : 					}

	jmp	SHORT $LN16@SeTextOut
$LN15@SeTextOut:
$LN18@SeTextOut:

; 101  : 				}
; 102  : 				size_t i = va_arg(args, size_t);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 8
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	mov	rax, QWORD PTR [rax-8]
	mov	QWORD PTR i$5[rsp], rax

; 103  : 				char buffer[sizeof(size_t)* 8 + 1];
; 104  : 				//	size_t len
; 105  : 				if (i < 0) {

	cmp	QWORD PTR i$5[rsp], 0
	jae	SHORT $LN14@SeTextOut

; 106  : 					i = +i;

	mov	rax, QWORD PTR i$5[rsp]
	mov	QWORD PTR i$5[rsp], rax

; 107  : 					sztoa(i, buffer, 10);

	mov	r8d, 10
	lea	rdx, QWORD PTR buffer$11[rsp]
	mov	rcx, QWORD PTR i$5[rsp]
	call	?sztoa@@YAPEAD_KPEADH@Z			; sztoa

; 108  : 				}
; 109  : 				else {

	jmp	SHORT $LN13@SeTextOut
$LN14@SeTextOut:

; 110  : 					sztoa(i, buffer, 10);

	mov	r8d, 10
	lea	rdx, QWORD PTR buffer$11[rsp]
	mov	rcx, QWORD PTR i$5[rsp]
	call	?sztoa@@YAPEAD_KPEADH@Z			; sztoa

; 111  : 					size_t len = strlen(buffer);

	lea	rcx, QWORD PTR buffer$11[rsp]
	call	strlen
	mov	QWORD PTR len$10[rsp], rax
$LN13@SeTextOut:

; 112  : 				}
; 113  : 				/*	while (len++ < width)
; 114  : 				puts("0");*/
; 115  : 				DebugSerial(buffer);

	lea	rcx, QWORD PTR buffer$11[rsp]
	call	?DebugSerial@@YAXPEAD@Z			; DebugSerial
	jmp	$LN12@SeTextOut
$LN19@SeTextOut:

; 116  : 			}
; 117  : 			else if (*format == 'c')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 99					; 00000063H
	jne	SHORT $LN11@SeTextOut

; 118  : 			{
; 119  : 				char c = va_arg(args, char);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 4
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	movzx	eax, BYTE PTR [rax-4]
	mov	BYTE PTR c$1[rsp], al

; 120  : 				//char buffer[sizeof(size_t) * 8 + 1];
; 121  : 				//sztoa(c, buffer, 10);
; 122  : 				//puts(buffer);
; 123  : 				WriteSerial(c);

	movzx	ecx, BYTE PTR c$1[rsp]
	call	?WriteSerial@@YAXD@Z			; WriteSerial
	jmp	$LN10@SeTextOut
$LN11@SeTextOut:

; 124  : 			}
; 125  : 			else if (*format == 'x')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 120				; 00000078H
	jne	SHORT $LN9@SeTextOut

; 126  : 			{
; 127  : 				size_t x = va_arg(args, size_t);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 8
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	mov	rax, QWORD PTR [rax-8]
	mov	QWORD PTR x$9[rsp], rax

; 128  : 				char buffer[sizeof(size_t)* 8 + 1];
; 129  : 				sztoa(x, buffer, 16);

	mov	r8d, 16
	lea	rdx, QWORD PTR buffer$12[rsp]
	mov	rcx, QWORD PTR x$9[rsp]
	call	?sztoa@@YAPEAD_KPEADH@Z			; sztoa

; 130  : 				//puts("0x");
; 131  : 				DebugSerial(buffer);

	lea	rcx, QWORD PTR buffer$12[rsp]
	call	?DebugSerial@@YAXPEAD@Z			; DebugSerial
	jmp	$LN8@SeTextOut
$LN9@SeTextOut:

; 132  : 			}
; 133  : 			else if (*format == 's')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 115				; 00000073H
	jne	SHORT $LN7@SeTextOut

; 134  : 			{
; 135  : 				char* x = va_arg(args, char*);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 8
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	mov	rax, QWORD PTR [rax-8]
	mov	QWORD PTR x$8[rsp], rax

; 136  : 				DebugSerial(x);

	mov	rcx, QWORD PTR x$8[rsp]
	call	?DebugSerial@@YAXPEAD@Z			; DebugSerial
	jmp	$LN6@SeTextOut
$LN7@SeTextOut:

; 137  : 			}
; 138  : 			else if (*format == 'f')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 102				; 00000066H
	jne	SHORT $LN5@SeTextOut

; 139  : 			{
; 140  : 				double x = va_arg(args, double);

	mov	rax, QWORD PTR args$[rsp]
	add	rax, 8
	mov	QWORD PTR args$[rsp], rax
	mov	rax, QWORD PTR args$[rsp]
	movsdx	xmm0, QWORD PTR [rax-8]
	movsdx	QWORD PTR x$7[rsp], xmm0

; 141  : 				DebugSerial(ftoa(x, 2));

	cvtsd2ss xmm0, QWORD PTR x$7[rsp]
	mov	dl, 2
	call	?ftoa@@YAPEADME@Z			; ftoa
	mov	rcx, rax
	call	?DebugSerial@@YAXPEAD@Z			; DebugSerial
	jmp	SHORT $LN4@SeTextOut
$LN5@SeTextOut:

; 142  : 			}
; 143  : 			else if (*format == '%')

	mov	rax, QWORD PTR format$[rsp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, 37					; 00000025H
	jne	SHORT $LN3@SeTextOut

; 144  : 			{
; 145  : 				DebugSerial(".");

	lea	rcx, OFFSET FLAT:$SG3580
	call	?DebugSerial@@YAXPEAD@Z			; DebugSerial

; 146  : 			}
; 147  : 			else

	jmp	SHORT $LN2@SeTextOut
$LN3@SeTextOut:

; 148  : 			{
; 149  : 				char buf[3];
; 150  : 				buf[0] = '%'; buf[1] = *format; buf[2] = '\0';

	mov	eax, 1
	imul	rax, rax, 0
	mov	BYTE PTR buf$3[rsp+rax], 37		; 00000025H
	mov	eax, 1
	imul	rax, rax, 1
	mov	rcx, QWORD PTR format$[rsp]
	movzx	ecx, BYTE PTR [rcx]
	mov	BYTE PTR buf$3[rsp+rax], cl
	mov	eax, 1
	imul	rax, rax, 2
	mov	BYTE PTR buf$3[rsp+rax], 0

; 151  : 				DebugSerial(buf);

	lea	rcx, QWORD PTR buf$3[rsp]
	call	?DebugSerial@@YAXPEAD@Z			; DebugSerial
$LN2@SeTextOut:
$LN4@SeTextOut:
$LN6@SeTextOut:
$LN8@SeTextOut:
$LN10@SeTextOut:
$LN12@SeTextOut:

; 152  : 			}
; 153  : 		}
; 154  : 		else

	jmp	SHORT $LN1@SeTextOut
$LN20@SeTextOut:

; 155  : 		{
; 156  : 			char buf[2];
; 157  : 			buf[0] = *format; buf[1] = '\0';

	mov	eax, 1
	imul	rax, rax, 0
	mov	rcx, QWORD PTR format$[rsp]
	movzx	ecx, BYTE PTR [rcx]
	mov	BYTE PTR buf$2[rsp+rax], cl
	mov	eax, 1
	imul	rax, rax, 1
	mov	BYTE PTR buf$2[rsp+rax], 0

; 158  : 			DebugSerial(buf);

	lea	rcx, QWORD PTR buf$2[rsp]
	call	?DebugSerial@@YAXPEAD@Z			; DebugSerial
$LN1@SeTextOut:

; 159  : 		}
; 160  : 		++format;

	mov	rax, QWORD PTR format$[rsp]
	inc	rax
	mov	QWORD PTR format$[rsp], rax

; 161  : 	}

	jmp	$LN22@SeTextOut
$LN21@SeTextOut:

; 162  : 	va_end(args);
; 163  : 
; 164  : }

	add	rsp, 280				; 00000118H
	ret	0
SeTextOut ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\serial.cpp
_TEXT	SEGMENT
?AuInitialiseSerial@@YAXXZ PROC				; AuInitialiseSerial

; 50   : void AuInitialiseSerial() {

$LN3:
	sub	rsp, 40					; 00000028H

; 51   : 	x64_outportb(SERIAL_PORT + 1, 0x00);

	xor	edx, edx
	mov	cx, 1017				; 000003f9H
	call	x64_outportb

; 52   : 	x64_outportb((SERIAL_PORT + 3), 0x80);

	mov	dl, 128					; 00000080H
	mov	cx, 1019				; 000003fbH
	call	x64_outportb

; 53   : 	x64_outportb((SERIAL_PORT + 0), 0x03);

	mov	dl, 3
	mov	cx, 1016				; 000003f8H
	call	x64_outportb

; 54   : 	x64_outportb((SERIAL_PORT + 1), 0x00);

	xor	edx, edx
	mov	cx, 1017				; 000003f9H
	call	x64_outportb

; 55   : 	x64_outportb((SERIAL_PORT + 3), 0x03);

	mov	dl, 3
	mov	cx, 1019				; 000003fbH
	call	x64_outportb

; 56   : 	x64_outportb((SERIAL_PORT + 2), 0xC7);

	mov	dl, 199					; 000000c7H
	mov	cx, 1018				; 000003faH
	call	x64_outportb

; 57   : 	x64_outportb((SERIAL_PORT + 4), 0x0B);

	mov	dl, 11
	mov	cx, 1020				; 000003fcH
	call	x64_outportb

; 58   : 
; 59   : 	//x64_outportb (PORT + 4, 0x0F);
; 60   : 	//interrupt_set (4,serial_handler, 4);
; 61   : }

	add	rsp, 40					; 00000028H
	ret	0
?AuInitialiseSerial@@YAXXZ ENDP				; AuInitialiseSerial
_TEXT	ENDS
END
