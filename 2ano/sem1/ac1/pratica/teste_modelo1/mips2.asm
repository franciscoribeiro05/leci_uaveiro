	# Mapa de registos:
	# i = $t0;
	# v = $t1;
	# &(val[0]) = $t2;
	# SIZE / 2
	
	
	.data
	.eqv SIZE,8
str1:	.asciiz "Result is: "
val:	.word 8, 4, 15, -1987, 327, -9, 27, 16
	.text
	.globl main
	
main:		# void main(void){
	li $t0,0	# i = 0;
	li $t8,SIZE	# SIZE / 2 = $T8;
	srl $t8,$t8,1	
	
do:	
	la $t2,val	# &(val[0]) = $t2;
	sll $t3,$t0,2	# i*4 = $t3;
	addu $t3,$t3,$t2	# &(val[i]) = $t3;
	
	lw $t1,0($t3)	# v = val[i];
	
	li $t4,SIZE
	sll $t4,$t4,1
	add $t4,$t3,$t4		# $t4 = &(val[i + SIZE / 2]);
	
	lw $t5,0($t4)		# val[i] = val[i + SIZE / 2];
	sw $t5,0($t3)
	
	sw $t1,0($t4)		# val[i + SIZE / 2] = v;
	
	
	addi $t0,$t0,1		# i++;
while:	blt $t0,$t8,do		# } while (++i < (SIZE / 2));


	li $v0,4	# print_string("Result is: ");
	la $a0,str1
	syscall
	
	li $t0,0 	# i = 0;
	
do2:
	la $t2,val	# &(val[0]) = $t2;
	sll $t3,$t0,2		# i*4 = $t3;
	addu $t3,$t3,$t2	# &(val[i]) = $t3;
	
	li $v0,1	# print_int10(val[i++]);
	lw $a0,0($t3)	
	syscall
	
	addi $t0,$t0,1	
	
	li $v0,11	# print_char(',');
	li $a0,','
	syscall
	

while2:	blt $t0,SIZE,do2	# } while (i < SIZE);

	jr $ra 	# }
	
