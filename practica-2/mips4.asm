	.data
dato1:	.word	2
dato2:	.word	10
dato3:	.word	50
dato4:	.word	70
dato5:	.word	58
res:	.space	4
	.text
main:
	lw $t1, dato1($0)
	lw $t2, dato2($0)
	lw $t3, dato3($0)
	lw $t4, dato4($0)
	lw $t5, dato5($0)
	#si dato5 esta entre dato1 y dato2
si:	
	slt $t6, $t1, $t5 # t1 < t5 t6 = 1
	slt $t7, $t5, $t2 # t5 < t1 t7 = 1
	beq $t7, $t6,entonces# si los dos son 1 salto
	slt $t6, $t3, $t5 # t1 < t5 t6 = 1
	slt $t7, $t5, $t4 # t5 < t1 t7 = 1
	bne $t7, $t6,finsi# si los dos son distinto entonces salto
entonces:
	li $t8, 1
	sw $t8,res($0)
finsi:
	add $t8, $zero, $t8
	sw $t8,res($0)
	
