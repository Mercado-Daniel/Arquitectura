	.data
v:	.word 1, -4, -5, 2
temp:	.space 4
res:	.space 1
	.text
main:
	lw $t1, v($0)
	slt $t0, $t1, $zero
	sb $t0, temp($0)
	
	lw $t1, v+4($0)
	slt $t0, $t1, $zero
	sb $t0, temp+1($0)
	
	lw $t1, v+8($0)
	slt $t0, $t1, $zero
	sb $t0, temp+2($0)
	
	lw $t1, v+12($0)
	slt $t0, $t1, $zero
	sb $t0, temp+3($0)
	
	lb $t1, temp($0)
	lb $t2, temp+1($0)
	and $t3, $t1, $t2
	lb $t1, temp+2($0)
	lb $t2, temp+3($0)
	and $t4, $t1, $t2
	and $t0, $t3, $t4
	sb $t0, res($0)
	
	
	
	