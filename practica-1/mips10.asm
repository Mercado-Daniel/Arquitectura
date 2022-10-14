	.data
palabra:.word 0x10203040
temporal:.space 4
	.text
main:   lh $s0, palabra($0)
	sh $s0, temporal+2($0)
	lh $s0, palabra+2($0)
	sh $s0, temporal($0)	
	lw $s0, temporal($0)
	sw $s0, palabra($0)