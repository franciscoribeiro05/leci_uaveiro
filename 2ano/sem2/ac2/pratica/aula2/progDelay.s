	# Mapa de registos:
	# $t0 = i;
	# $t1 = K;

	.data
char:	.byte '8'
	.text
	.globl main

main:		# int main(){

	li $t0,0	
				# for(int i = 0; i < 100; i++){
for:	bge $t0,100,endf	

	li $a0,1	# delay(1);
	
	addiu $sp,$sp,-4	# Fazer crescer a stack
	sw $ra,0($sp)		# Guardar o $ra
	
	jal delay
	
	lw $ra,0($sp)		# Repor o $ra
	addiu $sp,$sp,4		# Repor o stack pointer para onde estava inicialmente
	
	li $v0,6	# printInt(i,10);
	li $a1,10
	move $a0,$t0
	syscall
	
	li $v0,3
	li $a0,'\n'
	syscall
	
	addi $t0,$t0,1	# i++;
	j for
endf:		# }

	li $v0,0	# return 0;
	jr $ra	# }

	

delay:	li $v0,12	# resetCoreTimer();
	syscall

	li $t1,20000000	# K = 20000;

while:			# while(readCoreTimer() < K * ms){
	li $v0,11
	syscall
	
	mulou $t1,$a0,$t1	# $t1 = K * ms;
	bge $v0,$t1,endw	# condição;

	j while
endw:			# }
	jr $ra		# Voltar para a função chamadora
