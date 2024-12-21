	# Mapa de registos:
	# n_even = $t0;
	# n_odd = $t1
	# p1 = $t2;
	# p2 = $t3;
	# a + N = $t4
	# $t5 e $t6 = registos auxiliares para cálculos e assim;
	
	
    	.data
    	.eqv SIZE, 35      # Define N como 35
aro:  	.space 140         # static int a[N], b[N];
bola:  	.space 140
    	.text
    	.globl main
	
main:			# void main(void){
	li $t0,0	# int n_even = 0;
	li $t1,0	# int n_odd = 0;
	
	la $t2,aro	# p1 = a;
	li $t4,SIZE
	sll $t4,$t4,2
	addu $t4,$t2,$t4	# # a + N = $t4
while:	bge $t2,$t4,endw	# while(p1 < (a + N)){

	li $v0,5		# *p1 = read_int();
	syscall
	sw $v0,0($t2)	
	
	
	addi $t2,$t2,4	# p1++;
	j while
endw:			# }

	la $t2,aro		# p1 = a;
	li $t4,SIZE
	sll $t4,$t4,2
	addu $t4,$t2,$t4	# # a + N = $t4
	la $t3,bola		# p2 = b;
	
while2:	bge $t2,$t4,endw2

	li $t5,2
	lw $t9, 0($t2)
	div $t9,$t5
	mfhi $t5	# $t5 = *p1 % 2;

if:	beq $t5,$0,else
	
	lw $t9,0($t2)	# $t9 = *p1;
	sw $t9,0($t3)	# *p2++ = *p1;
	addi $t3,$t3,4
	
	addi $t1,$t1,1	# n_odd++;

else:			# else
	addi $t0,$t0,1	# n_even++;
	
	
	addi $t2,$t2,4	# p1++;
	j while2
endw2:			# }

	la $t3,bola	# p2 = b;
	sll $t5,$t1,2   # $t5 = b + n_odd;
	addu $t5,$t5,$t3
	
while3:	bge $t3,$t5,endw3	# while(p2 < (b + n_odd)){
	
	li $v0,1	# print_int10(*p2);
	lw $a0,0($t3)
	syscall

	addi $t3,$t3,4	# p2++;
	j while3
endw3:			# }
	

	jr $ra		# }