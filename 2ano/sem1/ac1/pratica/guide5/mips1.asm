	.data
	.eqv SIZE,5	# #define SIZE 5 
str:	.asciiz "\nIntroduza um número: "	# static char str[]="\nIntroduza um numero: "; 
	.align 2
lista:	.space 20	# static int lista[SIZE];
	.text
	.globl main
	
	# Mapa de registos:
	# i = $t0;
	# &lista = $t1;
	# &lista + i = $t2;
	# SIZE*4 = $t3;
	
main:	move $t0,$0	# int i = 0;
	
	li $t3,SIZE	# Colocar SIZE*4 em $t3;
	sll $t3,$t3,2
	
	la $t1,lista	# lista: $t1;
	

while:	bge $t0,$t3,endw	# while(i<size){

	add $t2,$t1,$t0		# lista + i: $t2;

	li $v0,4	# print_string(str); 
	la $a0,str
	syscall
	
	li $v0,5	# lista[i] = read_int();
	syscall		
	
	sw $v0,0($t2)	
	
		

	addi $t0,$t0,4	# i++
	j while		# Voltar ao início do loop;
endw:			# }

	jr $ra		# Fim do programa;

	
