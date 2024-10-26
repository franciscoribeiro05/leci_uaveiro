	
	.data
newline: .asciiz "\n" #String de nova linha
prompt:  .asciiz "Insira um valor: " #Prompt do input do utilizador

	.text
	.globl main

main:	li $v0,4	#Pedir o input do user
	la $a0,prompt
	syscall
	
	li $v0,5	#Colocar esse valor lido(do utilizador) através do teclado no registo $t0
	syscall
	or $t0,$v0,$0
	

	sll $t2,$t0,1	#fazer os shifts pedidos
	srl $t3,$t0,1
	sra $t4,$t0,1
	
	
	xor $t5,$t3,$t0	#transformar a o conteudo do registo $t0 em código gray
	
	li $v0,1	#dar print do resultado da conversao em código gray em decimal
	or $a0,$t5,$0
	syscall
	
	li $v0,4	#dar print de um \n
	la $a0,newline
	syscall
	
	
	srl $t6,$t5,4	#transformar o gray  de volta em binário natural
	srl $t7,$t5,2
	srl $t8,$t5,1
	xor $t5,$t5,$t6
	xor $t5,$t5,$t7
	xor $t5,$t5,$t8
	
	
	li $v0,1	#dar print do valor original em decimal
	or $a0,$t5,$0
	syscall
	
	
	jr $ra