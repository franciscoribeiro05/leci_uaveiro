	.data
	.eqv SIZE,10	# #define SIZE 10
	.eqv print_string,4
	.eqv print_int10,1
	.eqv read_int,5
	.eqv print_char,11
	.eqv TRUE,1
	.eqv FALSE,0
#char1:	.byte '{'
#char2:	.byte '}'
#char3:	.byte ';'
lista:	.space 40	# static int lista[SIZE];
str:	.asciiz "\nIntroduza um número: "
	.text
	.globl main
	
	# Mapa de registos:
	# $t0 = houveTroca;
	# $t1 = aux;
	# $t2 = *p;
	# $t3 = *pUltimo;
	# $t4 = j k ;
	# $t5 = p = lista;
	# $t6 = *(p+1);
	# $t7 = p + 1;
	
main:	move $t4 ,$0	# int j = 0;
	la $t5,lista	# $t5 = lista;
	
whilej:	bge $t4,SIZE,endwj	# while(){

	li $v0,print_string	# print_str("Introduza um número");
	la $a0,str
	syscall
	
	li $v0,read_int		# lista[j] = read_int();
	syscall
	sw $v0,0($t5)

	addi $t5,$t5,4
	addi $t4,$t4,1	# j++;
	j whilej	# Volta para o início do loop;
endwj:			# }

	la $t5,lista	# $t5 = lista;
	li $t3,SIZE
	sll $t3,$t3,2
	add $t3,$t5,$t3 # pUltimo = lista + (SIZE - 1);
	addi $t3,$t3, -4
	
do:			# do{

	la $t5,lista	# $t5 = lista;

	li $t0, FALSE	# houveTroca = FALSE;
	
whilei: bge $t5,$t3,endwi	# for (p = lista; p < pUltimo; p++){

	lw $t2,0($t5)		# $t2 = *p;
	addi $t7,$t5,4		# $t7 = p + 1;
	lw $t6,0($t7)		# $t6 = *(p + 1);
	
if:	ble $t2,$t6,endif	# if (*p > *(p+1)){

	move $t1,$t2	# aux = *p;
	sw $t6,0($t5)	# *p = *(p+1);
	sw $t1,0($t7)	# *(p+1) = aux;
	li $t0,TRUE	# houveTroca = TRUE;

 
endif: 			# }

	addi $t5,$t5,4	# p++;
	j whilei	# Volta para o início do loop;
	
endwi:			# }

while:	beq $t0,TRUE,do 	# } while (houveTroca==TRUE);


	li $v0,print_char	# print_char('{')
	li $a0,'{'
	syscall

	move $t4 ,$0	# int k = 0;
	la $t5,lista	# $t5 = lista;	

whilek:	bge $t4,SIZE,endwk	# while(k<SIZE){
	
	li $v0,print_int10	# print_int10(lista[k]);
	lw $a0,0($t5)
	syscall
	
	li $t3,SIZE	# $t3 = SIZE -1;
	addi $t3,$t3,-1
	
	
ifchar:	beq $t4,$t3,endifchar	# if(K != SIZE - 1){
	
	li $v0,print_char	# print_char(';')
	li $a0,';'
	syscall
	
endifchar:		# }
	
	addi $t5,$t5,4
	addi $t4,$t4,1	# k++;
	j whilek	# Voltar ao início do loop;
endwk:			# }


	li $v0,print_char	# # print_char('}')
	li $a0,'}'
	syscall


	jr $ra		# Fim do programa;

