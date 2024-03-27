; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?HBABar@@3PEAXEA				; HBABar
_BSS	SEGMENT
?HBABar@@3PEAXEA DQ 01H DUP (?)				; HBABar
_BSS	ENDS
CONST	SEGMENT
$SG4290	DB	'ahci/sata not found ', 0aH, 00H
	ORG $+2
$SG4300	DB	'ahci/sata version %d.%d found ', 0aH, 00H
$SG4313	DB	'ahci sata drive found at port %d', 0aH, 00H
	ORG $+6
$SG4316	DB	'ahci satapi drive found at port %d', 0aH, 00H
	ORG $+4
$SG4319	DB	'ahci semb drive found at port %d', 0aH, 00H
	ORG $+6
$SG4322	DB	'ahci pm drive found at port %d', 0aH, 00H
CONST	ENDS
PUBLIC	?AuAHCIInitialise@@YAXXZ			; AuAHCIInitialise
PUBLIC	?AHCIInterruptHandler@@YAX_KPEAX@Z		; AHCIInterruptHandler
PUBLIC	?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z		; AuAHCICheckType
EXTRN	AuTextOut:PROC
EXTRN	AuInterruptEnd:PROC
EXTRN	AuDisableInterrupt:PROC
EXTRN	AuEnableInterrupt:PROC
EXTRN	AuPCIEAllocMSI:PROC
EXTRN	AuPCIEScanClass:PROC
EXTRN	AuPCIEWrite:PROC
EXTRN	AuPCIERead:PROC
EXTRN	setvect:PROC
EXTRN	?APICTimerSleep@@YAXI@Z:PROC			; APICTimerSleep
EXTRN	AuMapMMIO:PROC
EXTRN	?AuAHCIDiskInitialise@@YAXPEAU_hba_port_@@@Z:PROC ; AuAHCIDiskInitialise
_BSS	SEGMENT
__IsAHCI64Bit DB 01H DUP (?)
_BSS	ENDS
pdata	SEGMENT
$pdata$?AuAHCIInitialise@@YAXXZ DD imagerel $LN17
	DD	imagerel $LN17+1004
	DD	imagerel $unwind$?AuAHCIInitialise@@YAXXZ
$pdata$?AHCIInterruptHandler@@YAX_KPEAX@Z DD imagerel $LN7
	DD	imagerel $LN7+196
	DD	imagerel $unwind$?AHCIInterruptHandler@@YAX_KPEAX@Z
$pdata$?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z DD imagerel $LN11
	DD	imagerel $LN11+147
	DD	imagerel $unwind$?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuAHCIInitialise@@YAXXZ DD 020701H
	DD	0130107H
$unwind$?AHCIInterruptHandler@@YAX_KPEAX@Z DD 010e01H
	DD	0820eH
$unwind$?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z DD 010901H
	DD	02209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ahci.cpp
_TEXT	SEGMENT
det$ = 0
ipm$ = 1
tv75 = 4
ssts$ = 8
port$ = 32
?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z PROC		; AuAHCICheckType

; 79   : int AuAHCICheckType(HBA_PORT *port) {

$LN11:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 80   : 	uint32_t ssts = port->ssts;

	mov	rax, QWORD PTR port$[rsp]
	mov	eax, DWORD PTR [rax+40]
	mov	DWORD PTR ssts$[rsp], eax

; 81   : 	uint8_t ipm = (ssts >> 8) & 0x0F;

	mov	eax, DWORD PTR ssts$[rsp]
	shr	eax, 8
	and	eax, 15
	mov	BYTE PTR ipm$[rsp], al

; 82   : 	uint8_t det = ssts & 0x0F;

	mov	eax, DWORD PTR ssts$[rsp]
	and	eax, 15
	mov	BYTE PTR det$[rsp], al

; 83   : 
; 84   : 	if (det != HBA_PORT_DET_PRESENT)

	movzx	eax, BYTE PTR det$[rsp]
	cmp	eax, 3
	je	SHORT $LN8@AuAHCIChec

; 85   : 		return AHCI_DEV_NULL;

	xor	eax, eax
	jmp	SHORT $LN9@AuAHCIChec
$LN8@AuAHCIChec:

; 86   : 	if (ipm != HBA_PORT_IPM_ACTIVE)

	movzx	eax, BYTE PTR ipm$[rsp]
	cmp	eax, 1
	je	SHORT $LN7@AuAHCIChec

; 87   : 		return AHCI_DEV_NULL;

	xor	eax, eax
	jmp	SHORT $LN9@AuAHCIChec
$LN7@AuAHCIChec:

; 88   : 
; 89   : 	switch (port->sig) {

	mov	rax, QWORD PTR port$[rsp]
	mov	eax, DWORD PTR [rax+36]
	mov	DWORD PTR tv75[rsp], eax
	cmp	DWORD PTR tv75[rsp], -1771503359	; 96690101H
	je	SHORT $LN2@AuAHCIChec
	cmp	DWORD PTR tv75[rsp], -1019477759	; c33c0101H
	je	SHORT $LN3@AuAHCIChec
	cmp	DWORD PTR tv75[rsp], -351010559		; eb140101H
	je	SHORT $LN4@AuAHCIChec
	jmp	SHORT $LN1@AuAHCIChec
$LN4@AuAHCIChec:

; 90   : 	case SATA_SIG_ATAPI:
; 91   : 		return AHCI_DEV_SATAPI;

	mov	eax, 4
	jmp	SHORT $LN9@AuAHCIChec
$LN3@AuAHCIChec:

; 92   : 	case SATA_SIG_SEMB:
; 93   : 		return AHCI_DEV_SEMB;

	mov	eax, 2
	jmp	SHORT $LN9@AuAHCIChec
$LN2@AuAHCIChec:

; 94   : 	case SATA_SIG_PM:
; 95   : 		return AHCI_DEV_PM;

	mov	eax, 3
	jmp	SHORT $LN9@AuAHCIChec
$LN1@AuAHCIChec:

; 96   : 	default:
; 97   : 		return AHCI_DEV_SATA;

	mov	eax, 1
$LN9@AuAHCIChec:

; 98   : 	}
; 99   : }

	add	rsp, 24
	ret	0
?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z ENDP		; AuAHCICheckType
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ahci.cpp
_TEXT	SEGMENT
i$1 = 32
port_is$2 = 36
is$ = 40
hba$ = 48
v$ = 80
p$ = 88
?AHCIInterruptHandler@@YAX_KPEAX@Z PROC			; AHCIInterruptHandler

; 57   : void AHCIInterruptHandler(size_t v, void* p){

$LN7:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 58   : 	AuDisableInterrupt();

	call	AuDisableInterrupt

; 59   : 	HBA_MEM* hba = (HBA_MEM*)HBABar;

	mov	rax, QWORD PTR ?HBABar@@3PEAXEA		; HBABar
	mov	QWORD PTR hba$[rsp], rax

; 60   : 	uint32_t is = hba->is;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+8]
	mov	DWORD PTR is$[rsp], eax

; 61   : 	for (int i = 0; i < 32; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AHCIInterr
$LN3@AHCIInterr:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AHCIInterr:
	cmp	DWORD PTR i$1[rsp], 32			; 00000020H
	jge	SHORT $LN2@AHCIInterr

; 62   : 		if ((hba->is & hba->pi & (1 << i))) {

	mov	rax, QWORD PTR hba$[rsp]
	mov	rcx, QWORD PTR hba$[rsp]
	mov	ecx, DWORD PTR [rcx+12]
	mov	eax, DWORD PTR [rax+8]
	and	eax, ecx
	mov	ecx, DWORD PTR i$1[rsp]
	mov	edx, 1
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	test	eax, eax
	je	SHORT $LN1@AHCIInterr

; 63   : 			uint32_t port_is = hba->port[i].is;

	movsxd	rax, DWORD PTR i$1[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rcx+rax+272]
	mov	DWORD PTR port_is$2[rsp], eax

; 64   : 			hba->port[i].is = port_is;

	movsxd	rax, DWORD PTR i$1[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	mov	edx, DWORD PTR port_is$2[rsp]
	mov	DWORD PTR [rcx+rax+272], edx

; 65   : 			break;

	jmp	SHORT $LN2@AHCIInterr
$LN1@AHCIInterr:

; 66   : 		}
; 67   : 	}

	jmp	SHORT $LN3@AHCIInterr
$LN2@AHCIInterr:

; 68   : 
; 69   : 	hba->is = is;

	mov	rax, QWORD PTR hba$[rsp]
	mov	ecx, DWORD PTR is$[rsp]
	mov	DWORD PTR [rax+8], ecx

; 70   : 	AuEnableInterrupt();

	call	AuEnableInterrupt

; 71   : 	AuInterruptEnd(0);

	xor	ecx, ecx
	call	AuInterruptEnd

; 72   : }

	add	rsp, 72					; 00000048H
	ret	0
?AHCIInterruptHandler@@YAX_KPEAX@Z ENDP			; AHCIInterruptHandler
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ahci.cpp
_TEXT	SEGMENT
i$ = 48
AhciNotFound$ = 52
hba$ = 56
func$ = 64
bus$ = 68
dev$ = 72
dt$1 = 76
device$ = 80
pi$ = 88
support_spin$ = 92
cmd$ = 96
hba_phys$ = 104
baseAddr$ = 108
_bit$ = 112
version_minor$ = 116
version_major$ = 120
MMIO$ = 128
num_cmd_slots$ = 136
int_line$ = 140
?AuAHCIInitialise@@YAXXZ PROC				; AuAHCIInitialise

; 104  : void AuAHCIInitialise() {

$LN17:
	sub	rsp, 152				; 00000098H

; 105  : 	int bus, dev, func = 0;

	mov	DWORD PTR func$[rsp], 0

; 106  : 	bool AhciNotFound = false;

	mov	BYTE PTR AhciNotFound$[rsp], 0

; 107  : 
; 108  : 	uint64_t device = AuPCIEScanClass(0x01, 0x06, &bus, &dev, &func);

	lea	rax, QWORD PTR func$[rsp]
	mov	QWORD PTR [rsp+32], rax
	lea	r9, QWORD PTR dev$[rsp]
	lea	r8, QWORD PTR bus$[rsp]
	mov	dl, 6
	mov	cl, 1
	call	AuPCIEScanClass
	mov	QWORD PTR device$[rsp], rax

; 109  : 	if (device == UINT32_MAX)

	mov	eax, -1					; ffffffffH
	cmp	QWORD PTR device$[rsp], rax
	jne	SHORT $LN14@AuAHCIInit

; 110  : 		AhciNotFound = true;

	mov	BYTE PTR AhciNotFound$[rsp], 1
$LN14@AuAHCIInit:

; 111  : 
; 112  : 	if (AhciNotFound) {

	movzx	eax, BYTE PTR AhciNotFound$[rsp]
	test	eax, eax
	je	SHORT $LN13@AuAHCIInit

; 113  : 		device = AuPCIEScanClass(0x01, 0x04, &bus, &dev, &func);

	lea	rax, QWORD PTR func$[rsp]
	mov	QWORD PTR [rsp+32], rax
	lea	r9, QWORD PTR dev$[rsp]
	lea	r8, QWORD PTR bus$[rsp]
	mov	dl, 4
	mov	cl, 1
	call	AuPCIEScanClass
	mov	QWORD PTR device$[rsp], rax

; 114  : 		if (device == UINT32_MAX) {

	mov	eax, -1					; ffffffffH
	cmp	QWORD PTR device$[rsp], rax
	jne	SHORT $LN12@AuAHCIInit

; 115  : 			AuTextOut("ahci/sata not found \n");

	lea	rcx, OFFSET FLAT:$SG4290
	call	AuTextOut

; 116  : 			return;

	jmp	$LN15@AuAHCIInit
$LN12@AuAHCIInit:
$LN13@AuAHCIInit:

; 117  : 		}
; 118  : 	}
; 119  : 
; 120  : 	uint32_t int_line = AuPCIERead(device, PCI_INTERRUPT_LINE, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR dev$[rsp]
	mov	r8d, DWORD PTR bus$[rsp]
	mov	edx, 60					; 0000003cH
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIERead
	mov	DWORD PTR int_line$[rsp], eax

; 121  : 	uint32_t baseAddr = AuPCIERead(device, PCI_BAR5, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR dev$[rsp]
	mov	r8d, DWORD PTR bus$[rsp]
	mov	edx, 36					; 00000024H
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIERead
	mov	DWORD PTR baseAddr$[rsp], eax

; 122  : 
; 123  : 	uint64_t cmd = AuPCIERead(device, PCI_COMMAND, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR dev$[rsp]
	mov	r8d, DWORD PTR bus$[rsp]
	mov	edx, 4
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIERead
	mov	eax, eax
	mov	QWORD PTR cmd$[rsp], rax

; 124  : 	cmd |= (1 << 1);

	mov	rax, QWORD PTR cmd$[rsp]
	or	rax, 2
	mov	QWORD PTR cmd$[rsp], rax

; 125  : 	cmd |= (1 << 10);

	mov	rax, QWORD PTR cmd$[rsp]
	bts	rax, 10
	mov	QWORD PTR cmd$[rsp], rax

; 126  : 	AuPCIEWrite(device, PCI_COMMAND, cmd, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+40], eax
	mov	eax, DWORD PTR dev$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR bus$[rsp]
	mov	r8d, DWORD PTR cmd$[rsp]
	mov	edx, 4
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIEWrite

; 127  : 
; 128  : 	AuPCIEAllocMSI(device, 36, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR dev$[rsp]
	mov	r8d, DWORD PTR bus$[rsp]
	mov	edx, 36					; 00000024H
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIEAllocMSI

; 129  : 	setvect(36, AHCIInterruptHandler);

	lea	rdx, OFFSET FLAT:?AHCIInterruptHandler@@YAX_KPEAX@Z ; AHCIInterruptHandler
	mov	ecx, 36					; 00000024H
	call	setvect

; 130  : 
; 131  : 	uint32_t hba_phys = baseAddr & 0xFFFFFFF0;

	mov	eax, DWORD PTR baseAddr$[rsp]
	and	eax, -16				; fffffff0H
	mov	DWORD PTR hba_phys$[rsp], eax

; 132  : 	void* MMIO = AuMapMMIO(hba_phys, 3);

	mov	eax, DWORD PTR hba_phys$[rsp]
	mov	edx, 3
	mov	ecx, eax
	call	AuMapMMIO
	mov	QWORD PTR MMIO$[rsp], rax

; 133  : 	HBA_MEM* hba = (HBA_MEM*)MMIO;

	mov	rax, QWORD PTR MMIO$[rsp]
	mov	QWORD PTR hba$[rsp], rax

; 134  : 	HBABar = MMIO;

	mov	rax, QWORD PTR MMIO$[rsp]
	mov	QWORD PTR ?HBABar@@3PEAXEA, rax		; HBABar

; 135  : 	hba->ghc = 1;

	mov	rax, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rax+4], 1

; 136  : 
; 137  : 	APICTimerSleep(1);

	mov	ecx, 1
	call	?APICTimerSleep@@YAXI@Z			; APICTimerSleep

; 138  : 	hba->ghc = (1 << 31);

	mov	rax, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rax+4], -2147483648		; 80000000H

; 139  : 	APICTimerSleep(1);

	mov	ecx, 1
	call	?APICTimerSleep@@YAXI@Z			; APICTimerSleep

; 140  : 
; 141  : 	uint32_t version_major = hba->vs >> 16 & 0xff;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+16]
	shr	eax, 16
	and	eax, 255				; 000000ffH
	mov	DWORD PTR version_major$[rsp], eax

; 142  : 	uint32_t version_minor = hba->vs & 0xff;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+16]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR version_minor$[rsp], eax

; 143  : 
; 144  : 	AuTextOut("ahci/sata version %d.%d found \n", version_major, version_minor);

	mov	r8d, DWORD PTR version_minor$[rsp]
	mov	edx, DWORD PTR version_major$[rsp]
	lea	rcx, OFFSET FLAT:$SG4300
	call	AuTextOut

; 145  : 
; 146  : 	uint32_t _bit = hba->cap >> 31 & 0xff;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax]
	shr	eax, 31
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _bit$[rsp], eax

; 147  : 	if (_bit)

	cmp	DWORD PTR _bit$[rsp], 0
	je	SHORT $LN11@AuAHCIInit

; 148  : 		__IsAHCI64Bit = true;

	mov	BYTE PTR __IsAHCI64Bit, 1
$LN11@AuAHCIInit:

; 149  : 
; 150  : 	hba->is = UINT32_MAX;

	mov	rax, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rax+8], -1			; ffffffffH

; 151  : 	hba->ghc |= 0x2;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+4]
	or	eax, 2
	mov	rcx, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rcx+4], eax

; 152  : 
; 153  : 	uint32_t num_cmd_slots = hba->cap >> 8 & 0xff;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax]
	shr	eax, 8
	and	eax, 255				; 000000ffH
	mov	DWORD PTR num_cmd_slots$[rsp], eax

; 154  : 	uint8_t support_spin = hba->cap & (1 << 27);

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax]
	and	eax, 134217728				; 08000000H
	mov	BYTE PTR support_spin$[rsp], al

; 155  : 
; 156  : 
; 157  : 	uint32_t pi = hba->pi;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+12]
	mov	DWORD PTR pi$[rsp], eax

; 158  : 	int i = 0;

	mov	DWORD PTR i$[rsp], 0
$LN10@AuAHCIInit:

; 159  : 	while (i < 32) {

	cmp	DWORD PTR i$[rsp], 32			; 00000020H
	jge	$LN9@AuAHCIInit

; 160  : 		if (pi & 1) {

	mov	eax, DWORD PTR pi$[rsp]
	and	eax, 1
	test	eax, eax
	je	$LN8@AuAHCIInit

; 161  : 			int dt = AuAHCICheckType(&hba->port[i]);

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	lea	rax, QWORD PTR [rcx+rax+256]
	mov	rcx, rax
	call	?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z	; AuAHCICheckType
	mov	DWORD PTR dt$1[rsp], eax

; 162  : 			if (dt == AHCI_DEV_SATA) {

	cmp	DWORD PTR dt$1[rsp], 1
	jne	$LN7@AuAHCIInit

; 163  : 				AuTextOut("ahci sata drive found at port %d\n", i);

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG4313
	call	AuTextOut

; 164  : 				hba->port[i].sctl &= ~PX_SCTL_IPM_MASK;

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rcx+rax+300]
	and	eax, -4096				; fffff000H
	movsxd	rcx, DWORD PTR i$[rsp]
	imul	rcx, rcx, 128				; 00000080H
	mov	rdx, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rdx+rcx+300], eax

; 165  : 				hba->port[i].sctl |= PX_SCTL_IPM_NONE;

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rcx+rax+300]
	or	eax, 768				; 00000300H
	movsxd	rcx, DWORD PTR i$[rsp]
	imul	rcx, rcx, 128				; 00000080H
	mov	rdx, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rdx+rcx+300], eax

; 166  : 				AuAHCIDiskInitialise(&hba->port[i]);

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	lea	rax, QWORD PTR [rcx+rax+256]
	mov	rcx, rax
	call	?AuAHCIDiskInitialise@@YAXPEAU_hba_port_@@@Z ; AuAHCIDiskInitialise
	jmp	SHORT $LN6@AuAHCIInit
$LN7@AuAHCIInit:

; 167  : 			}
; 168  : 			else if (dt == AHCI_DEV_SATAPI) {

	cmp	DWORD PTR dt$1[rsp], 4
	jne	SHORT $LN5@AuAHCIInit

; 169  : 				AuTextOut("ahci satapi drive found at port %d\n", i);

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG4316
	call	AuTextOut
	jmp	SHORT $LN4@AuAHCIInit
$LN5@AuAHCIInit:

; 170  : 			}
; 171  : 			else if (dt == AHCI_DEV_SEMB) {

	cmp	DWORD PTR dt$1[rsp], 2
	jne	SHORT $LN3@AuAHCIInit

; 172  : 				AuTextOut("ahci semb drive found at port %d\n", i);

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG4319
	call	AuTextOut
	jmp	SHORT $LN2@AuAHCIInit
$LN3@AuAHCIInit:

; 173  : 			}
; 174  : 			else if (dt == AHCI_DEV_PM) {

	cmp	DWORD PTR dt$1[rsp], 3
	jne	SHORT $LN1@AuAHCIInit

; 175  : 				AuTextOut("ahci pm drive found at port %d\n", i);

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG4322
	call	AuTextOut
$LN1@AuAHCIInit:
$LN2@AuAHCIInit:
$LN4@AuAHCIInit:
$LN6@AuAHCIInit:
$LN8@AuAHCIInit:

; 176  : 			}
; 177  : 		}
; 178  : 		pi >>= 1;

	mov	eax, DWORD PTR pi$[rsp]
	shr	eax, 1
	mov	DWORD PTR pi$[rsp], eax

; 179  : 		i++;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax

; 180  : 	}

	jmp	$LN10@AuAHCIInit
$LN9@AuAHCIInit:
$LN15@AuAHCIInit:

; 181  : }

	add	rsp, 152				; 00000098H
	ret	0
?AuAHCIInitialise@@YAXXZ ENDP				; AuAHCIInitialise
_TEXT	ENDS
END
