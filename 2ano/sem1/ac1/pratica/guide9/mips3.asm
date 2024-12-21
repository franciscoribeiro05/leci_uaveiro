	.data
	.eqv SIZE,10	# #define SIZE 10
a:	.space 80	# static double a[SIZE];
sum:	.double 0.0
	.text
	.globl main
	
main:			# int main(void){
	li $t0,0	# $t0 = i = 0;
	
	la $t2,a	# $t2 = &(a[0]);
	
while_main: bge $t0,80,endw_main	# while(i<SIZE){

	li $v0,7	# a[i] = read_double();
	syscall
	
	add $t3,$t2,$t0	# $t3 = &(a[i]);
	
	s.d $f0,0($t3)	# a[i] = read_double();
	
	addi $t0,$t0,8	# i++;
	j while_main
endw_main:			# }

	li $v0,3	# print_double( average(a, SIZE) );
	la $a0,a
	li $a1,SIZE
	
	
	addiu $sp,$sp,-4	# Guardar o $ra;
	sw $ra,0($sp)
	
	jal average		# Chamar a função;
	
	lw $ra,0($sp)
	addiu $sp,$sp,4		# Restaurar o $ra;
	
	mov.d $f12,$f0
	syscall
	
	
	li $v0,0	# return 0;
	
	jr $ra		# }

average:		# double average(double *array, int n){
	move $t0,$a1	# int i = n-1;
	addi $t0,$t0,-1
	
	la $t1,sum	# $f2 = sum;
	l.d $f2,0($t1)
	
	
while:	blt $t0,0,endw	# while(i >= 0){
	
	sll $t3,$t0,3	# $t3 = i * 8;
	add $t1,$a0,$t3	# $t1 = &(array[i]);
	
	l.d $f4,0($t1)	# $f4 = array[i];
	
	add.d $f2,$f2,$f4	# sum += array[i];
	
	addi $t0,$t0,-1	# i--;
	j while		# }
endw:

	mtc1 $a1,$f4	# $f4 = (double)n;
	cvt.d.w $f4,$f4
	
	div.d $f0,$f2,$f4	# return sum / (double)n;
	
	jr $ra	# }