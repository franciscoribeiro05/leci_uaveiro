	.data
array:	.word	str1, str2, str3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteriros"
	.text
	.globl main
	
main:	li $t0,0		# void main(void){
				# int i = 0;
while:	bge $t0,3,endw		# while(i < 3){
	la $t1,array		# char **pp = array;
	sll $t2,$t0,2		# int offs = i * 4;
	addu $t2,$t2,$t1	# char **p = &(array[i]);
	
	lw $a0,0($t2)		# char *val = array[i];
	li $v0,4		# print_string(array[i]);
	syscall
	
	
	li $a0,'\n'
	li $v0,11		# print_char('\n');
	syscall
	
	addi $t0,$t0,1		# i++
	j while
	
endw:				# }

	jr $ra			# }
