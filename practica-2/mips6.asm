	.data
v:	.word 4, 3, 12, 7, 25, 15, 0, 10
rango1:	.word 9
rango2:	.word 17
total:	.space 4
	.text
main:
	la $t2, v
	lw $t8, rango1($0)
	lw $t9, rango2($0)
	and $t3, $0, $t3
	li $t0, 0 # i
	li $t1, 7 # N
para:
	bgt $t0, $t1, finpara
	lw $t4,0($t2) #carga elemento vector en $t4
	slt $t7, $t8, $t4 #si rango1 < v[i] devuelve 1 
	slt $t6, $t4, $t9 #si rango2 > v[i] devuelve 1 
	bne $t6, $t7 , incremento
	addi $t3, $t3, 1 #sumo 1 si esta en el rango
incremento:
	addi $t2,$t2, 4 #paso a la siguiente posicion del vector
	addi $t0,$t0, 1 #incremento i
	j para #saltar a bucle
finpara:
	sw $t3, total($0) #almacenar $t3 en total
	
