; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?kernelName@@3PEBDEB				; kernelName
PUBLIC	?_kernel_major_version@@3HA			; _kernel_major_version
PUBLIC	?_kernel_minor_version@@3HA			; _kernel_minor_version
PUBLIC	?_kernel_patch_version@@3HA			; _kernel_patch_version
PUBLIC	?_kernel_build_date@@3PEBDEB			; _kernel_build_date
PUBLIC	?_kernel_build_time@@3PEBDEB			; _kernel_build_time
_BSS	SEGMENT
?_kernel_minor_version@@3HA DD 01H DUP (?)		; _kernel_minor_version
?_kernel_patch_version@@3HA DD 01H DUP (?)		; _kernel_patch_version
_BSS	ENDS
CONST	SEGMENT
$SG2547	DB	'Aurora', 00H
	ORG $+1
$SG2552	DB	'May 15 2024', 00H
	ORG $+4
$SG2554	DB	'01:12:49', 00H
CONST	ENDS
_DATA	SEGMENT
?kernelName@@3PEBDEB DQ FLAT:$SG2547			; kernelName
?_kernel_major_version@@3HA DD 01H			; _kernel_major_version
	ORG $+4
?_kernel_build_date@@3PEBDEB DQ FLAT:$SG2552		; _kernel_build_date
?_kernel_build_time@@3PEBDEB DQ FLAT:$SG2554		; _kernel_build_time
_DATA	ENDS
END
