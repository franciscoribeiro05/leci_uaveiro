	# Mapa de registos:
	# $t0 = p;
	# $t1 = pultimo;
	
	.data
	.eqv SIZE,3	# # define SIZE 3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
array:	.word str1,str2,str3
	.text
	.globl main
		 
main:		# void main(void){


	la $t0,array	# p = array;
	
	li $t1,SIZE	# pultimo = array + SIZE;
	sll $t1,$t1,2
	addu $t1,$t1,$t0
	
while:	bge $t0,$t1,endw	# while(p < pultimo){

	li $v0,4		# print_string(*p);
	lw $a0,0($t0)
	syscall
	
	li $v0,11		# print_char('\n');
	li $a0,'\n'
	syscall	
	
	addiu $t0,$t0,4		# p++;
	j while
endw:				# }

	jr $ra	# }