	# Mapa de registos:
	# i = $t0;
	
	.data
	.eqv SIZE,3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
array:	.word str1,str2,str3
	.text
	.globl main
	
main:			# void main(void){
	
	li $t0,0	# int i = 0;
	
while: bge $t0,SIZE,endw	# while(i < SIZE){

	sll $t4,$t0,2		# $t3 = array[i];
	la $t3,array
	addu $t4,$t4,$t3
	
	li $v0,4	# print_string(array[i]);
	lw $a0,0($t4)
	syscall
	
	
	li $v0,11	# print_char('\n');
	li $a0,'\n'
	syscall

	addi $t0,$t0,1	# i++;
	j while
endw:			# }
	
	
	jr $ra 		# }