	#Mapa de registos:
	#Soma : $t0
	#Value :$t1
	#i : $t2



	.data
str1:	.asciiz "Introduza um número: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos e' :"
str4:	.asciiz "\n"

	.text
	
	.eqv read_int,5
	.eqv print_string,4
	
	.globl main
	
main:	li $t0,0
	li $t2,0
	
for:	
	bge $t2,5,endw
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $v0,read_int
	syscall
	move $t1,$v0
	
if:	
	blez $t1,else
	add $t0,$t0,$t1

	j	endif
	
else:
	li $v0,print_string
	la $a0,str2
	syscall

endif:	
	
	
	addi $t2,$t2,1
	j for
	
endw:

	li $v0,print_string
	la $a0,str3
	syscall
	
	
	
	li $v0,1
	move $a0,$t0
	syscall
	
	
	
	jr $ra
	
	
	

