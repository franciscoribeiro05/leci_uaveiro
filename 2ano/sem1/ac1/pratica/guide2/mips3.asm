	.data
str1: .asciiz "Introduza 2 números " #
str2: .asciiz "A soma dos dois números é : "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int_10,1
	
	.text
	.globl main
	
main:	li $v0,print_string	#Print da str1
	la $a0,str1
	syscall
	
	
	li $v0,read_int		#Ler o valor a
	syscall
	or $t0,$0,$v0
	
	
	li $v0,read_int		#Ler o valor b
	syscall
	or $t1,$0,$v0
	
	
	
	add $t2,$t1,$t0		#Adição dos registos que contêm os valores lidos
	
	li $v0,print_string	#Print da str2
	la $a0,str2
	syscall
	
	
	li $v0,print_int_10	#Print do valor da soma
	move $a0,$t2
	syscall
	

	jr $ra