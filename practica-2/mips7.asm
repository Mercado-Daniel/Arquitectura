	.data
cadena:	.asciiz	"pedro perez pereira pobre pintor portugues pinta preciosos cuadros para partir para paris"
carac:	.asciiz "p"
total:	.space 4 
	.text
main:
	la $t2, cadena
	lb $t9, carac($0)
	and $t3, $0, $t3
	li $t0, 0 # i
	li $t1, 88 # N
para:
	bgt $t0, $t1, finpara
	lb $t4,0($t2) #carga elemento vector en $t4
	bne $t4, $t9, incremento
	addi $t3, $t3, 1 #sumo 1 si los caracteres son iguales
incremento:
	addi $t2,$t2, 1 #paso a la siguiente posicion del vector
	addi $t0,$t0, 1 #incremento i
	j para #saltar a bucle
finpara:
	sw $t3, total($0) #almacenar $t3 en total