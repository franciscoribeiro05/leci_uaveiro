	.eqv SIZE,10
	.data
lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15	# static int lista[]={8, -4, 3, 5, 124, -15, 87, 9, 27, 15};
str1:	.asciiz "\nConteudo do array:\n"
str2:	.asciiz "; "
	.text
	.globl main
	
	# Mapa de registos:;
	# p = $t0;
	# &lista[SIZE] = $t1;
	
main:	la $t0,lista	# p = lista;
	
	li $t1,SIZE	# Calculo auxiliar que coloca SIZE*4 em $t1;
	sll $t1,$t1,2
	
	add $t1,$t1,$t0		# &lista[SIZE] = $t1;
	
while:	bge $t0,$t1,endw	# while(p < lista + SIZE){
	
	li $v0,1	# print_int10( *p );
	lw $a0,0($t0)
	syscall	
		
	li $v0,4	# print_string("; ");
	la $a0,str2
	syscall
	
	addi $t0,$t0,4	# p++;
	j while		# }
endw:

	jr $ra		# Fim do programa;