		.data 0x10000000
entero1:	.word 18
entero2:	.word -1215
divisor:	.word 5
		.data 0x10010000
cociente1:	.space 4
cociente2:	.space 4
		.text
main:
	lw $t0,entero1($0)
	lw $t1,entero2($0)
	lw $t2,divisor($0)
	div $t3,$t0,$t2
	mflo $t3
	sw $t3, cociente1($0)
	div $t4,$t1,$t2
	mflo $t4
	sw $t4, cociente2($0)
