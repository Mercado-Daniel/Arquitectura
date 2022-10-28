	.data
v:	.word 4, 0, 12, 0, 0, 15, 0, 0
total:	.space 4
	.text
main:
	la $t2, v
	and $t3, $0, $t3
	li $t0, 0 # i
	li $t1, 7 # N
para:
	bgt $t0, $t1, finpara
	lw $t4,0($t2) #carga elemento vector en $t4
	bne $t4, $zero , incremento
	addi $t3, $t3, 1 #sumo 1 si es un 0
incremento:
	addi $t2,$t2, 4 #paso a la siguiente posicion del vector
	addi $t0,$t0, 1 #incremento i
	j para #saltar a bucle
finpara:
	sw $t3, total($0) #almacenar $t3 en total
	