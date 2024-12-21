	# Mapa de registos:
	# i = $t0;
	# j = $t1;
	# $t4 = &(array[0])
	
	.data
	.eqv SIZE,3	# # define SIZE 3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
str4:	.asciiz "\nString #"
str5:	.asciiz ": "
array:	.word str1,str2,str3
	.text
	.globl main
	
	
main:			# void main(void){

	li $t0,0	# int i = 0;
	
	li $t2,SIZE	# SIZE = $t2;
	
	la $t4,array	# $t4 = &(array[0]);
	
while:	bge $t0,$t2,endw	# while(i < SIZE){

	li $v0,4	# print_string( "\nString #" );
	la $a0,str4
	syscall
	
	li $v0,1	# print_int10( i );
	move $a0,$t0
	syscall
	
	li $v0,4	# print_string( ": " );
	la $a0,str5
	syscall
	
	li $t1,0	# int j = 0;
	
	sll $t3,$t0,2	# $t3 = &(array[i]);
	addu $t3,$t3,$t4
	
	lw $t3,0($t3)	# $t3 = array[i];
	
while2:	lb $t8,0($t3)
	beq $t8,'\0',endw2	# while(array[i][j] != '\0'){
	
	li $v0,11	# print_char(array[i][j]);
	move $a0,$t8
	syscall
	
	li $v0,11	# print_char('-');
	li $a0,'-'
	syscall
	
	addiu $t3,$t3,1
	
	addi $t1,$t1,1	# j++;
	j while2
endw2:			# }
	
	addi $t0,$t0,1		# i++;
	j while
endw:				# }

	jr $ra		# }
