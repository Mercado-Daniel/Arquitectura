	.data
v:	.byte 0, 1, 1, 1, 0
res:	.space 3
	.text
main:
	lb $t1, v($0)
	lb $t2, v+4($0)
	and $t0, $t1, $t2
	sb $t0, res($0)
	lb $t1, v+1($0)
	lb $t2, v+3($0)
	or $t0, $t1, $t2
	sb $t0, res+1($0)
	lb $t1, v($0)
	lb $t2, v+1($0)
	or $t3, $t1, $t2
	lb $t4, v+2($0)
	and $t0, $t3, $t4
	sb $t0, res+2($0)