	.data
	.text
	.globl main
	
main:			# int main(void){
	
while_main:	
	
	#addiu $sp,$sp,-4	# Fazer crescer a stack
	#sw $ra,0($sp)		# Guardar o valor de $ra na stack
	
	jal configD11		# configD11();
	
	li $a0,1		# outD11(1);
	jal outD11
	
	li $a0,500		# delay(500);
	jal delay
	
	li $a0,0		# outD11(0);
	jal outD11
	
	li $a0,600		# delay(600);
	jal delay
	
	li $a0,1		# outD11(1);
	jal outD11
	
	li $a0,200		# delay(200);
	jal delay
	
	li $a0,0		# outD11(0);
	jal outD11
	
	li $a0,150		# delay(150);
	jal delay
	
	li $a0,1		# outD11(1);
	jal outD11
	
	li $a0,100		# delay(100);
	jal delay
	
	li $a0,0		# outD11(0);
	jal outD11
	
	li $a0,600		# delay(600);
	jal delay		

	#lw $ra,0($sp)	# Restaurar o valoe de $ra
	#addiu $sp,$sp,4	# Colocar o stack pointer onde estava inicialmente
	
	j while_main

	li $v0,0	# return 0;
	jr $ra		# }
	


delay:	li $v0,12	# resetCoreTimer();
	syscall

	li $t1,20000	# K = 20000;

while:			# while(readCoreTimer() < K * ms){
	li $v0,11
	syscall
	
	mulou $t1,$a0,$t1	# $t1 = K * ms;
	bge $v0,$t1,endw	# condição;

	j while
endw:			# }
	jr $ra		# Voltar para a função chamadora



configD11:
	lui $t0,0xBF88
	lw $t1,0x6080($t0)
	andi $t1,$t1,0xBFFF
	sw $t1,0x6080($t0)
	jr $ra
	
outD11:
	lui $t0,0xBF88
	lw $t1,0x60A0($t0)
	andi $t1,$t1,0xBFFF
	sll $a0,$a0,14
	or $t1,$t1,$a0
	sw $t1,0x60A0($t0)
	jr $ra
