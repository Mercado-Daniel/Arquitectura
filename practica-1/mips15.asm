	.data 0x10000000
entero: .word 0xff0f1235
result: .space 4
	.text
main: 
	lw $t0, entero($0)
	andi $t1,$t0,0xdd0f1235
	sw $t1, result($0)
	ori $t2,$t1,0xdd8f1235
	sw $t2,result($0)