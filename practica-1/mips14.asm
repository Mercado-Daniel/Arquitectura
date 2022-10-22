	.data 0x10000000
entero: .word 0xabcd12bd
result: .space 4
	.text
main: 
	lw $t0, entero($0)
	andi $t1,$t0,0x894d12bd
	sw $t1, result($0)