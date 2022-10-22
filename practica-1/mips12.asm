	.data 0x10000000
v:	.word 10,20
result:	.space 4
	.text
main:	
	lw $s0,v($0)
	lw $s1,v+4($0)
	add $s2, $s0,$s1
	sw $s2, result($0)