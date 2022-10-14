	.data
dato:	.byte 3 #inicializo una posición de memoria a 3
	.text
	.globl main	#debe ser global
main:	lw $t0, dato($0)

#dato y main son etiquetas
#.data .byte .text .globl son directivas
# #inicializo una posición de memoria a 3 y #debe ser global son comentarios
