	.data 0x10000000
entero: .word 0x1237
result: .space 4
	.text
main:
	lw $t0,entero($0)
	sll $t1, $t0, 5
	sw $t1, result($0)