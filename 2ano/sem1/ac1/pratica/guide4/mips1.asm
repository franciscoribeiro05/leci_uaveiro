	.eqv read_string,8
	.eqv print_int10,1
	.eqv SIZE,20
	.data
	
str: 	.space 21

	.text
	.globl main
	
	# Reg map
	# $t0 - num
	# #t1 - i
	# str - $t2
	# str+i - $t3
	# str[i] - $t4
	
main:	
	li 	$v0, read_string
	la 	$a0, str
	li 	$a1, SIZE
	syscall				# read_str(str,SIZE);
	
	li 	$t0, 0			# num = 0;
	li 	$t1, 0			# i = 0;	
	
while:	
	la 	$t2, str		# address of the first char of str
	addu 	$t3,$t2,$t1		# move pointer across the string, 1 byte at a time - same value as i
	lb 	$t4,0($t3)		# get the value at the current pointer
	beq 	$t4,'\0',endw		# if (val == '\0') break;
if:	
	blt	$t4,'0',endif
	bgt	$t4,'9',endif
	addi	$t0,$t0,1		# num++;
endif:
	addi	$t1,$t1,1		# i++
	j while
	
endw: 	
	li	$v0, print_int10
	move	$a0, $t0
	syscall				# print_int10
	jr $ra				# finished
