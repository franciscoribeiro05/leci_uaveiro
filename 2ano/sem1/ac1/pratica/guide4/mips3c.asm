	.data
	.eqv SIZE,4
	.eqv print_int10,1
array:	.word 7692,23,5,234	# int array[4] = {7692, 23, 5, 234};
	.text
	.globl main
	
	# Mapa de registos:
	# $t0 = i;
	# $t1 = &array[0];
	# $t2 = soma;
	# $t5 = registo_auxiliar;
	
	
main:	move $t2,$0	# int soma = 0;
		
	li $t5,SIZE	# Colocar SIZE*4 no registo_auxiliar;
	sll $t5,$t5,2
	
	la $t1,array	# Colocar &array[0] em $t1;
	
	
for:	bge $t0,$t5,endf	# for (size_t i = 0; i< SIZE; i+= 4) {

	addu $t4,$t1,$t0

	lw $t4,0($t4)		# soma = soma + array[i];
	addu $t2,$t2,$t4


	addi $t0,$t0,4	# Incrementa o i (i += 4);
	j for		# Volta para o início do loop;
endf:			# }

	li $v0,print_int10	# print_int10(soma);
	move $a0,$t2
	syscall
	
	
	jr $ra		# Fim do programa;
