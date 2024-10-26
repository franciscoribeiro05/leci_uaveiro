	.eqv SIZE,10	# #define SIZE 10
	.eqv TRUE,1	# #define TRUE 1
	.eqv FALSE,0	# #define FALSE 0
	.eqv read_int,5
	.eqv print_int,1
	.data
str1:	.asciiz "\nIntroduza um número: "
char1:	.byte '{'
char2:	.byte '}'
	.align 2
lista:	.space 40	# static int lista[SIZE];
	.text
	.globl main
	
	# Mapa de registos :
	# houveTroca = $t0;
	# i = $t1;
	# aux = $t2;
	# SIZE*4 = $t3;
	# lista = $t5;
	# &lista + i = $t6;
	# &lista + i + 1 = $t6;
	# j or k : $t4;
		
		
main:	move $t4,$0	# int j = 0;
	li $t3,SIZE	# SIZE*4 = $t3;
	sll $t3,$t3,2
	
	la $t5,lista	# lista = $t5;
		
whilej:	bge $t4,36,endwj	# while(j < SIZE - 1){
	
	li $v0,4	# printf("\nIntroduza um número: ")
	la $a0,str1
	syscall
	
	li $v0,read_int		# lista[j] = read_int();
	syscall
	
	sw $v0,0($t5)
	
	addi $t5,$t5,4		# Carregar em $t5 o endereço de lista[j];
	addi $t4,$t4,4	# j++
	j whilej		# Volta para o iniício do loop
endwj: 			# }

#---------------------------------------------------------------------------------------------------------
	la $t5,lista

do:			# do{
	li $t0,FALSE	# houveTroca = FALSE;
	
	li $t1,0	# int i = 0;
	
whilei:	bge $t1,36,endwi	# While(i<size-1){

	add $t6,$t1,$t5		# &lista + i = $t6
	addi $t7,$t6,1		# &lista + i + 1 = $t7
	
	lw $t8, 0($t6)	# $t8 = lista[i];
	lw $t9, 0($t7)  # $t9 = lista[i + 1];
	
if:	ble $t8,$t9,endif

	lw $t2,0($t6)	# aux = lista[i];
	
	sw $t9,0($t6)	# lista[i] = lista[i+1];
	sw $t2,0($t7)	# lista[i+1] = aux;
	
	li $t0,TRUE	# houveTroca = TRUE;
	
endif:

	addi $t1,$t1,4	# i++
	j whilei		# Voltar para o início do loop;
endwi:			# }

	beq $t0,TRUE,do		# } while (houveTroca==TRUE);

#---------------------------------------------------------------------------------------------------------


	li $v0,11	# print_char('{');
	la $a0,char1
	syscall
	

	move $t4,$0	# int k = 0;
	la $t5,lista	# $t5 = lista;
	
whilek:	bge $t4,36,endwk	#while(k < SIZE - 1){


	li $v0,print_int	# print_int10(lista[k]);
	lw $a0,0($t5)
	syscall
	
	addi $t5,$t5,4		# $t5 = &lista[k];
	addi $t4,$t4,4  # k++;
	j whilek	# Voltar ao início do loop;
endwk:			# }


	li $v0,11	# print_char('}');
	la $a0,char2
	syscall
	
	jr $ra		# Fim do programa;
