	# Mapa de registos:
	# Value: $t0
	# Bit: $t1
	# i: $t2
	# mais_significativo: $t4
	# 0x80000000: $t5
	# i%4 : $t3
	#flag :$t6
	#$t6 or $t1: $t7 
	
	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nO valor em binário e': "

	.text
	.eqv read_int,5
	.eqv print_char,11
	.eqv print_string,4
	.eqv print_int,1
	.globl main
	
main:	li $v0,print_string	# print_string("Introduza um numero: ");
	la $a0,str1
	syscall
	
	li $v0,read_int		# value = read_int();
	syscall
	or $t0,$0,$v0
	
	li $v0,print_string	# print_string("\nO valor em binário e': ");
	la $a0,str2
	syscall
	
	move $t2,$0		#Carregar i com o valor 0 inicialmente;
	
	li $t5,0x80000000
	li $t6,0
	
	
do:	bge $t2,32,do		# Salta para o fim do loop se i >= 32.
	 
	and $t4,$t0,$t5	# bit = value & 0x80000000;
	or $t1,$t4,$0
	

              # --------------------------------------------Código comentado porque o alteramos na alínea abaixo--------------------------------------------
	
	
#if:	beq $t1,$0,else		# Se bit = 0, então salta para o else
#
#	li $v0,print_char	# print_char('1');
#	li $a0,'1'
#	syscall
	
#	j endf			# Salta para o fim do if;

#else:	
#	li $v0,print_char	# print_char('0');
#	li $a0,'0'
#	syscall
	
#endf:

		# --------------------------------------------------------------------------------------------------------------------------------------------



	and $t1,$t5,$t0		# bit = (value & 0x80000000);
	srl $t1,$t1,31		# bit = bit >> 31;
	or $t7,$t6,$t1		# c = bit or flag
	
if_flag:
	
	beq $t7,0,endif_flag	# if(flag == 1 || bit != 0);
	
	li $t6,1		# flag = 1;
	
if4:	rem $t3,$t2,4
	bne $t3,$0,endif4
	
	li $v0,print_char
	li $a0, ' '
	syscall

endif4:

	addi $t1,$t1,0x30	# print_char(0x30 + bit);
	
	li $v0,print_char	
	move $a0,$t1
	syscall
	
	
endif_flag:
	
	
	sll $t0,$t0,1		# value = value << 1;
	
	
	addi $t2,$t2,1		# i++
	blt $t2,32,do		# Volta para o inicio do loop;
	
endw:
	move $v0,$0		# Carregar novamente o regito $v0 com 0's;
	jr $ra			# Fim do programa;
	
	
	
	
	
