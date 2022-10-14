.data 0x10000000
v:	.word 10, 20, 25, 500, 3
	.text
main:	lw $s0, v($0)
	sw $s0, v+0x10000($0)
	lw $s1, v+4($0)
	sw $s1, v+0x10004($0)
	lw $s2, v+8($0)
	sw $s2, v+0x10008($0)
	lw $s3, v+12($0)
	sw $s3, v+0x1000c($0)
	lw $s4, v+16($0)
	sw $s4, v+0x10010($0)