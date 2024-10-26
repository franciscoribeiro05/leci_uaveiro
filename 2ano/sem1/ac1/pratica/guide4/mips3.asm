	.data
	.eqv SIZE,4
	.eqv print_int10,1
array:	.word 7692,23,5,234	# int array[4] = {7692, 23, 5, 234};
	.text
	.globl main
	
	# Mapa de registos:
	# $t0 = p;
	# $t1 = pultimo;
	# $t2 = soma;
	# $t5 = registo_auxiliar;
	
main:	move $t2,$0	# int soma = 0;
	
	la $t0,array	# p = array;
	
	li $t5,SIZE	# Colocar SIZE*4 - 1 no registo_auxiliar($t5);
	sll $t5,$t5,2
	addi $t5,$t5,-1
	
	add $t1,$t5,$t0	# pultimo=array+SIZE~*4 - 1;
	
while:	bge $t0,$t1,endw	# while( p <= pultimo ){

	lw $t5,0($t0)	# Coloca *p no registo_auxiliar($t5);
	add $t2,$t2,$t5

	addi $t0,$t0,4	# p++;
	j while		# Volta para o início do loop;
endw:			# }

	li $v0,print_int10	# print_int10(soma);
	move $a0,$t2
	syscall
	
	
	jr $ra		# Fim do programa;