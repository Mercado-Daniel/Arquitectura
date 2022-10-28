	.data
v:	.word 2, -4, -6
res:	.space 3
	.text
main:
	lw $t1, v($0)
	bne $t1, $zero,menorcero
	sb $zero, res($0)
	lw $t1, v+4($0)
	bne $t1, $zero,menorcero1
	sb $zero, res+1($0)
	lw $t1, v+8($0)
	bne $t1, $zero,menorcero2
	sb $zero, res+2($0)
	
menorcero:
	slt $t0, $zero, $t1
	sb $t0, res($0)
	lw $t1, v+4($0)
	bne $t1, $zero,menorcero1
	sb $zero, res+1($0)
menorcero1:
	slt $t0, $zero, $t1
	sb $t0, res+1($0)
	lw $t1, v+8($0)
	bne $t1, $zero,menorcero2
	sb $zero, res+2($0)
menorcero2:
	slt $t0, $zero, $t1
	sb $t0, res+2($0)