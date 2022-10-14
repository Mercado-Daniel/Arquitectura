	.data 0x10010002
vbytes: .byte 0x10, 0x20, 0x30, 0x40
	.align 2
palabra:.space 4
	.text
main:	lb $s0, vbytes($0)
	sb $s0, palabra($0)
	lb $s0, vbytes+1($0)
	sb $s0, palabra+1($0)
	lb $s0, vbytes+2($0)
	sb $s0, palabra+2($0)
	lb $s0, vbytes+3($0)
	sb $s0, palabra+3($0)