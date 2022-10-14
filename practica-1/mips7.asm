	.data 0x10000000
v:	.word 10, 20, 25, 500, 3
	.text
main:	lw $s0, v($0)
	lw $s1, v+4($0)
	lw $s2, v+8($0)
	lw $s3, v+12($0)
	lw $s4, v+16($0)
