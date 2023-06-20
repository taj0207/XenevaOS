; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?OpenFile@@YAHPEADH@Z				; OpenFile
PUBLIC	?ReadFile@@YA_KHPEAX_K@Z			; ReadFile
PUBLIC	?WriteFile@@YA_KHPEAX_K@Z			; WriteFile
PUBLIC	?CreateDir@@YAHPEAD@Z				; CreateDir
PUBLIC	?RemoveFile@@YAHPEAD@Z				; RemoveFile
PUBLIC	?CloseFile@@YAHH@Z				; CloseFile
EXTRN	AuVFSOpen:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeReadBlock:PROC
EXTRN	AuVFSCreateDir:PROC
EXTRN	AuVFSCreateFile:PROC
EXTRN	?AuVFSRemoveFile@@YAHPEAU__VFS_NODE__@@0@Z:PROC	; AuVFSRemoveFile
EXTRN	?AuVFSRemoveDir@@YAHPEAU__VFS_NODE__@@0@Z:PROC	; AuVFSRemoveDir
EXTRN	AuVFSNodeWrite:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	kfree:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z:PROC ; AuProcessGetFileDesc
EXTRN	memset:PROC
EXTRN	memcpy:PROC
pdata	SEGMENT
$pdata$?OpenFile@@YAHPEADH@Z DD imagerel $LN9
	DD	imagerel $LN9+202
	DD	imagerel $unwind$?OpenFile@@YAHPEADH@Z
$pdata$?ReadFile@@YA_KHPEAX_K@Z DD imagerel $LN19
	DD	imagerel $LN19+555
	DD	imagerel $unwind$?ReadFile@@YA_KHPEAX_K@Z
$pdata$?WriteFile@@YA_KHPEAX_K@Z DD imagerel $LN8
	DD	imagerel $LN8+285
	DD	imagerel $unwind$?WriteFile@@YA_KHPEAX_K@Z
$pdata$?CreateDir@@YAHPEAD@Z DD imagerel $LN6
	DD	imagerel $LN6+127
	DD	imagerel $unwind$?CreateDir@@YAHPEAD@Z
$pdata$?RemoveFile@@YAHPEAD@Z DD imagerel $LN6
	DD	imagerel $LN6+108
	DD	imagerel $unwind$?RemoveFile@@YAHPEAD@Z
$pdata$?CloseFile@@YAHH@Z DD imagerel $LN6
	DD	imagerel $LN6+145
	DD	imagerel $unwind$?CloseFile@@YAHH@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?OpenFile@@YAHPEADH@Z DD 010d01H
	DD	0a20dH
$unwind$?ReadFile@@YA_KHPEAX_K@Z DD 011201H
	DD	0e212H
$unwind$?WriteFile@@YA_KHPEAX_K@Z DD 011201H
	DD	0c212H
$unwind$?CreateDir@@YAHPEAD@Z DD 010901H
	DD	08209H
$unwind$?RemoveFile@@YAHPEAD@Z DD 010901H
	DD	06209H
$unwind$?CloseFile@@YAHH@Z DD 010801H
	DD	08208H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\fileserv.cpp
_TEXT	SEGMENT
file$ = 32
current_proc$ = 40
current_thr$ = 48
fd$ = 80
?CloseFile@@YAHH@Z PROC					; CloseFile

; 203  : int CloseFile(int fd) {

$LN6:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 72					; 00000048H

; 204  : 	if (fd == -1)

	cmp	DWORD PTR fd$[rsp], -1
	jne	SHORT $LN3@CloseFile

; 205  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN4@CloseFile
$LN3@CloseFile:

; 206  : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 207  : 	AuProcess* current_proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR current_proc$[rsp], rax

; 208  : 	AuVFSNode* file = current_proc->fds[fd];

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR current_proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+543]
	mov	QWORD PTR file$[rsp], rax

; 209  : 
; 210  : 	if (file->flags & FS_FLAG_FILE_SYSTEM)

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, BYTE PTR [rax+61]
	and	eax, 64					; 00000040H
	test	eax, eax
	je	SHORT $LN2@CloseFile

; 211  : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN4@CloseFile
$LN2@CloseFile:

; 212  : 	if (file->flags & FS_FLAG_GENERAL)

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, BYTE PTR [rax+61]
	and	eax, 4
	test	eax, eax
	je	SHORT $LN1@CloseFile

; 213  : 		kfree(file);

	mov	rcx, QWORD PTR file$[rsp]
	call	kfree
$LN1@CloseFile:

; 214  : 
; 215  : 	current_proc->fds[fd] = 0;

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR current_proc$[rsp]
	mov	QWORD PTR [rcx+rax*8+543], 0

; 216  : 	return 0;

	xor	eax, eax
$LN4@CloseFile:

; 217  : }

	add	rsp, 72					; 00000048H
	ret	0
?CloseFile@@YAHH@Z ENDP					; CloseFile
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\fileserv.cpp
_TEXT	SEGMENT
dir$ = 32
fsys$ = 40
pathname$ = 64
?RemoveFile@@YAHPEAD@Z PROC				; RemoveFile

; 188  : int RemoveFile(char* pathname) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 189  : 	AuVFSNode* dir = AuVFSOpen(pathname);

	mov	rcx, QWORD PTR pathname$[rsp]
	call	AuVFSOpen
	mov	QWORD PTR dir$[rsp], rax

; 190  : 	if (!dir)

	cmp	QWORD PTR dir$[rsp], 0
	jne	SHORT $LN3@RemoveFile

; 191  : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN4@RemoveFile
$LN3@RemoveFile:

; 192  : 	AuVFSNode* fsys = (AuVFSNode*)dir->device;

	mov	rax, QWORD PTR dir$[rsp]
	mov	rax, QWORD PTR [rax+63]
	mov	QWORD PTR fsys$[rsp], rax

; 193  : 	if (fsys->flags & FS_FLAG_DIRECTORY)

	mov	rax, QWORD PTR fsys$[rsp]
	movzx	eax, BYTE PTR [rax+61]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN2@RemoveFile

; 194  : 		return AuVFSRemoveDir(fsys, dir);

	mov	rdx, QWORD PTR dir$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	?AuVFSRemoveDir@@YAHPEAU__VFS_NODE__@@0@Z ; AuVFSRemoveDir
	jmp	SHORT $LN4@RemoveFile

; 195  : 	else

	jmp	SHORT $LN1@RemoveFile
$LN2@RemoveFile:

; 196  : 		return AuVFSRemoveFile(fsys, dir);

	mov	rdx, QWORD PTR dir$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	?AuVFSRemoveFile@@YAHPEAU__VFS_NODE__@@0@Z ; AuVFSRemoveFile
$LN1@RemoveFile:
$LN4@RemoveFile:

; 197  : }

	add	rsp, 56					; 00000038H
	ret	0
?RemoveFile@@YAHPEAD@Z ENDP				; RemoveFile
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\fileserv.cpp
_TEXT	SEGMENT
dirfile$ = 32
fsys$ = 40
current_thr$ = 48
current_proc$ = 56
filename$ = 80
?CreateDir@@YAHPEAD@Z PROC				; CreateDir

; 163  : int CreateDir(char* filename) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 164  : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 165  : 	AuProcess* current_proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR current_proc$[rsp], rax

; 166  : 
; 167  : 	AuVFSNode *fsys = AuVFSFind(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 168  : 	AuVFSNode* dirfile = NULL;

	mov	QWORD PTR dirfile$[rsp], 0

; 169  : 	if (fsys){

	cmp	QWORD PTR fsys$[rsp], 0
	je	SHORT $LN3@CreateDir

; 170  : 		dirfile = AuVFSCreateDir(fsys, filename);

	mov	rdx, QWORD PTR filename$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSCreateDir
	mov	QWORD PTR dirfile$[rsp], rax

; 171  : 	}
; 172  : 	else {

	jmp	SHORT $LN2@CreateDir
$LN3@CreateDir:

; 173  : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN4@CreateDir
$LN2@CreateDir:

; 174  : 	}
; 175  : 
; 176  : 	if (dirfile) {

	cmp	QWORD PTR dirfile$[rsp], 0
	je	SHORT $LN1@CreateDir

; 177  : 		kfree(dirfile);

	mov	rcx, QWORD PTR dirfile$[rsp]
	call	kfree

; 178  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN4@CreateDir
$LN1@CreateDir:

; 179  : 	}
; 180  : 
; 181  : 	return -1;

	mov	eax, -1
$LN4@CreateDir:

; 182  : }

	add	rsp, 72					; 00000048H
	ret	0
?CreateDir@@YAHPEAD@Z ENDP				; CreateDir
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\fileserv.cpp
_TEXT	SEGMENT
file$ = 32
buff$1 = 40
current_thr$ = 48
current_proc$ = 56
aligned_buffer$ = 64
fsys$ = 72
write_bytes$ = 80
fd$ = 112
buffer$ = 120
length$ = 128
?WriteFile@@YA_KHPEAX_K@Z PROC				; WriteFile

; 130  : size_t WriteFile(int fd, void* buffer, size_t length) {

$LN8:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 104				; 00000068H

; 131  : 	if (fd == -1)

	cmp	DWORD PTR fd$[rsp], -1
	jne	SHORT $LN5@WriteFile

; 132  : 		return 0;

	xor	eax, eax
	jmp	$LN6@WriteFile
$LN5@WriteFile:

; 133  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rsp], 0
	jne	SHORT $LN4@WriteFile

; 134  : 		return 0;

	xor	eax, eax
	jmp	$LN6@WriteFile
$LN4@WriteFile:

; 135  : 	if (!length)

	cmp	QWORD PTR length$[rsp], 0
	jne	SHORT $LN3@WriteFile

; 136  : 		return 0;

	xor	eax, eax
	jmp	$LN6@WriteFile
$LN3@WriteFile:

; 137  : 
; 138  : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 139  : 	AuProcess* current_proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR current_proc$[rsp], rax

; 140  : 	AuVFSNode* file = current_proc->fds[fd];

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR current_proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+543]
	mov	QWORD PTR file$[rsp], rax

; 141  : 	uint8_t* aligned_buffer = (uint8_t*)buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR aligned_buffer$[rsp], rax

; 142  : 
; 143  : 	if (!file)

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN2@WriteFile

; 144  : 		return 0;

	xor	eax, eax
	jmp	$LN6@WriteFile
$LN2@WriteFile:

; 145  : 	size_t write_bytes = 0;

	mov	QWORD PTR write_bytes$[rsp], 0

; 146  : 	size_t ret_bytes;
; 147  : 	/* every general file will contain its
; 148  : 	* file system node as device */
; 149  : 	AuVFSNode* fsys = (AuVFSNode*)file->device;

	mov	rax, QWORD PTR file$[rsp]
	mov	rax, QWORD PTR [rax+63]
	mov	QWORD PTR fsys$[rsp], rax

; 150  : 	if (file->flags & FS_FLAG_GENERAL) {

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, BYTE PTR [rax+61]
	and	eax, 4
	test	eax, eax
	je	SHORT $LN1@WriteFile

; 151  : 		uint64_t* buff = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buff$1[rsp], rax

; 152  : 		memset(buff, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buff$1[rsp]
	call	memset

; 153  : 		memcpy(buff,aligned_buffer, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	mov	rdx, QWORD PTR aligned_buffer$[rsp]
	mov	rcx, QWORD PTR buff$1[rsp]
	call	memcpy

; 154  : 		AuVFSNodeWrite(fsys, file, buff, length);

	mov	r9d, DWORD PTR length$[rsp]
	mov	r8, QWORD PTR buff$1[rsp]
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeWrite

; 155  : 		AuPmmngrFree((void*)V2P((size_t)buff));

	mov	rcx, QWORD PTR buff$1[rsp]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree
$LN1@WriteFile:
$LN6@WriteFile:

; 156  : 	}
; 157  : }

	add	rsp, 104				; 00000068H
	ret	0
?WriteFile@@YA_KHPEAX_K@Z ENDP				; WriteFile
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\fileserv.cpp
_TEXT	SEGMENT
file$ = 32
i$1 = 40
tv83 = 44
buff$2 = 48
aligned_buffer$ = 56
num_blocks$3 = 64
ret_bytes$ = 72
read_bytes$ = 80
current_thr$ = 88
current_proc$ = 96
fsys$ = 104
fd$ = 128
buffer$ = 136
length$ = 144
?ReadFile@@YA_KHPEAX_K@Z PROC				; ReadFile

; 78   : size_t ReadFile(int fd, void* buffer, size_t length) {

$LN19:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 120				; 00000078H

; 79   : 	if (fd == -1)

	cmp	DWORD PTR fd$[rsp], -1
	jne	SHORT $LN14@ReadFile

; 80   : 		return 0;

	xor	eax, eax
	jmp	$LN15@ReadFile
$LN14@ReadFile:

; 81   : 	if (!buffer)

	cmp	QWORD PTR buffer$[rsp], 0
	jne	SHORT $LN13@ReadFile

; 82   : 		return 0;

	xor	eax, eax
	jmp	$LN15@ReadFile
$LN13@ReadFile:

; 83   : 	if (!length)

	cmp	QWORD PTR length$[rsp], 0
	jne	SHORT $LN12@ReadFile

; 84   : 		return 0;

	xor	eax, eax
	jmp	$LN15@ReadFile
$LN12@ReadFile:

; 85   : 	
; 86   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 87   : 	AuProcess* current_proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR current_proc$[rsp], rax

; 88   : 	AuVFSNode* file = current_proc->fds[fd];

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR current_proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+543]
	mov	QWORD PTR file$[rsp], rax

; 89   : 	uint8_t* aligned_buffer = (uint8_t*)buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR aligned_buffer$[rsp], rax

; 90   : 	if (!file)

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN11@ReadFile

; 91   : 		return 0;

	xor	eax, eax
	jmp	$LN15@ReadFile
$LN11@ReadFile:

; 92   : 	size_t read_bytes = 0;

	mov	QWORD PTR read_bytes$[rsp], 0

; 93   : 	size_t ret_bytes;
; 94   : 	/* every general file will contain its
; 95   : 	 * file system node as device */
; 96   : 	AuVFSNode* fsys = (AuVFSNode*)file->device;

	mov	rax, QWORD PTR file$[rsp]
	mov	rax, QWORD PTR [rax+63]
	mov	QWORD PTR fsys$[rsp], rax

; 97   : 	
; 98   : 	if (file->flags & FS_FLAG_GENERAL) {

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, BYTE PTR [rax+61]
	and	eax, 4
	test	eax, eax
	je	$LN10@ReadFile

; 99   : 		size_t num_blocks = length / PAGE_SIZE + ((length % PAGE_SIZE) ? 1 : 0);;

	xor	edx, edx
	mov	rax, QWORD PTR length$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN17@ReadFile
	mov	DWORD PTR tv83[rsp], 1
	jmp	SHORT $LN18@ReadFile
$LN17@ReadFile:
	mov	DWORD PTR tv83[rsp], 0
$LN18@ReadFile:
	xor	edx, edx
	mov	rax, QWORD PTR length$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	movsxd	rcx, DWORD PTR tv83[rsp]
	add	rax, rcx
	mov	QWORD PTR num_blocks$3[rsp], rax

; 100  : 		if ((length % PAGE_SIZE) != 0)

	xor	edx, edx
	mov	rax, QWORD PTR length$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN9@ReadFile

; 101  : 			num_blocks++;

	mov	rax, QWORD PTR num_blocks$3[rsp]
	inc	rax
	mov	QWORD PTR num_blocks$3[rsp], rax
$LN9@ReadFile:

; 102  : 		for (int i = 0; i < num_blocks; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN8@ReadFile
$LN7@ReadFile:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN8@ReadFile:
	movsxd	rax, DWORD PTR i$1[rsp]
	cmp	rax, QWORD PTR num_blocks$3[rsp]
	jae	$LN6@ReadFile

; 103  : 			if (file->eof)

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, BYTE PTR [rax+36]
	test	eax, eax
	je	SHORT $LN5@ReadFile

; 104  : 				break;

	jmp	$LN6@ReadFile
$LN5@ReadFile:

; 105  : 			uint64_t* buff = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buff$2[rsp], rax

; 106  : 			memset(buff, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buff$2[rsp]
	call	memset

; 107  : 			read_bytes = AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((size_t)buff));

	mov	rcx, QWORD PTR buff$2[rsp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock
	mov	QWORD PTR read_bytes$[rsp], rax

; 108  : 			memcpy(aligned_buffer, buff, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	mov	rdx, QWORD PTR buff$2[rsp]
	mov	rcx, QWORD PTR aligned_buffer$[rsp]
	call	memcpy

; 109  : 			AuPmmngrFree((void*)V2P((size_t)buff));

	mov	rcx, QWORD PTR buff$2[rsp]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 110  : 			aligned_buffer += PAGE_SIZE;

	mov	rax, QWORD PTR aligned_buffer$[rsp]
	add	rax, 4096				; 00001000H
	mov	QWORD PTR aligned_buffer$[rsp], rax

; 111  : 			ret_bytes += read_bytes;

	mov	rax, QWORD PTR read_bytes$[rsp]
	mov	rcx, QWORD PTR ret_bytes$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR ret_bytes$[rsp], rax

; 112  : 		}

	jmp	$LN7@ReadFile
$LN6@ReadFile:

; 113  : 	}
; 114  : 	else if (file->flags & FS_FLAG_DEVICE){

	jmp	SHORT $LN4@ReadFile
$LN10@ReadFile:
	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, BYTE PTR [rax+61]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN3@ReadFile
	jmp	SHORT $LN2@ReadFile
$LN3@ReadFile:

; 115  : 		/* devfs will handle*/
; 116  : 	}
; 117  : 	else if (file->flags & FS_FLAG_PIPE) {

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, BYTE PTR [rax+61]
	and	eax, 128				; 00000080H
$LN2@ReadFile:
$LN4@ReadFile:

; 118  : 		/* ofcourse, pipe subsystem will handle */
; 119  : 	}
; 120  : 	return ret_bytes;

	mov	rax, QWORD PTR ret_bytes$[rsp]
$LN15@ReadFile:

; 121  : }

	add	rsp, 120				; 00000078H
	ret	0
?ReadFile@@YA_KHPEAX_K@Z ENDP				; ReadFile
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\fileserv.cpp
_TEXT	SEGMENT
fd$ = 32
file$ = 40
current_proc$ = 48
current_thr$ = 56
fsys$ = 64
filename$ = 96
mode$ = 104
?OpenFile@@YAHPEADH@Z PROC				; OpenFile

; 47   : int OpenFile(char* filename, int mode) {

$LN9:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 48   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 49   : 	AuProcess* current_proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR current_proc$[rsp], rax

; 50   : 
; 51   : 	AuVFSNode *fsys = AuVFSFind(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 52   : 	AuVFSNode* file = AuVFSOpen(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSOpen
	mov	QWORD PTR file$[rsp], rax

; 53   : 	if (!file) {

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN6@OpenFile

; 54   : 		if (mode & FILE_OPEN_CREAT || mode & FILE_OPEN_WRITE) {

	mov	eax, DWORD PTR mode$[rsp]
	and	eax, 8
	test	eax, eax
	jne	SHORT $LN4@OpenFile
	mov	eax, DWORD PTR mode$[rsp]
	and	eax, 4
	test	eax, eax
	je	SHORT $LN5@OpenFile
$LN4@OpenFile:

; 55   : 			file = AuVFSCreateFile(fsys, filename);

	mov	rdx, QWORD PTR filename$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSCreateFile
	mov	QWORD PTR file$[rsp], rax

; 56   : 		}
; 57   : 		else 

	jmp	SHORT $LN3@OpenFile
$LN5@OpenFile:

; 58   : 			return -1;

	mov	eax, -1
	jmp	SHORT $LN7@OpenFile
$LN3@OpenFile:
$LN6@OpenFile:

; 59   : 	}
; 60   : 
; 61   : 	/* check for last time, if any error occured */
; 62   : 	if (!file)

	cmp	QWORD PTR file$[rsp], 0
	jne	SHORT $LN2@OpenFile

; 63   : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN7@OpenFile
$LN2@OpenFile:

; 64   : 
; 65   : 	int fd = AuProcessGetFileDesc(current_proc);

	mov	rcx, QWORD PTR current_proc$[rsp]
	call	?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z ; AuProcessGetFileDesc
	mov	DWORD PTR fd$[rsp], eax

; 66   : 	if (fd == -1)

	cmp	DWORD PTR fd$[rsp], -1
	jne	SHORT $LN1@OpenFile

; 67   : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN7@OpenFile
$LN1@OpenFile:

; 68   : 	current_proc->fds[fd] = file;

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR current_proc$[rsp]
	mov	rdx, QWORD PTR file$[rsp]
	mov	QWORD PTR [rcx+rax*8+543], rdx

; 69   : 	return fd;

	mov	eax, DWORD PTR fd$[rsp]
$LN7@OpenFile:

; 70   : }

	add	rsp, 88					; 00000058H
	ret	0
?OpenFile@@YAHPEADH@Z ENDP				; OpenFile
_TEXT	ENDS
END
