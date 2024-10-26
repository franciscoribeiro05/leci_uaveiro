	.data
	.eqv SIZE,20	# #define SIZE 20
	.eqv read_string,8
str:	.space 21	# static char str[SIZE+1];
	.text
	.globl main
	
	# Mapa de registos:
	# num = $t0
	# *p = $t1
	# & (str[0]) ≃ $t2
	
main:	move $t0,$0	# int num = 0;
	
	li $v0,read_string	# read_string(str, SIZE);
	la $a0,str
	li $a1,SIZE
	syscall
	
	la $t1,str	# p = str;
	
while:	lb $t4,0($t1)
	beq $t4,'\0',endw
	
	#beq $t4,'\0' endw
	
	
if:	ble $t4,'0',endif	# if( (*p >= '0') && (*p <= '9') ){
	bge $t4,'9',endif
	
	addi $t0,$t0,1	# num++;


endif:				# }
	
	addi $t1,$t1,1	# p++;
	j while		# volta para o início do loop
	
endw:

	li $v0,1	# print_int10(num);
	move $a0,$t0
	syscall
	
	
	jr $ra		# fim do programa

	