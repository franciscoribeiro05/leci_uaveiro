	# Mapa de registos:
	# $t0 = digit;
	# $t1 = res;
	# 
	
	.data
str_teste1:	.asciiz "1234"
	.text
	.globl main
	
main:
	la $a0,str_teste1		# Função Main de Teste;
	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	jal atoi
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	move $a0,$v0
	li $v0,1
	syscall
	
	li $v0,0
	
	jr $ra
								
atoi:	
	li $t1,0	# unsigned int digit, res = 0;
	
	move $t2,$a0	# $t2 = s;
	li $t4,10	# $t4 = 10;
	li $t5,'0'	# $t5 = '0';
	
while:	lb $t3,0($t2)	# $t3 = *s;
	
	blt $t3,'0',endw	# while( (*s >= '0') && (*s <= '9') ){
	bgt $t3,'9',endw
	
	addi $t2,$t2,1		# *s++;
	
	sub $t0,$t3,$t5		# digit = *s++ - '0';
	
	mul $t1,$t1,$t4		# res = 10 * res + digit;
	addu $t1,$t1,$t0
	
	j while			
endw:	move $v0,$t1		# return res;
	
	jr $ra			# }