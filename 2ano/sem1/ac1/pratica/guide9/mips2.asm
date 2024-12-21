	.data
const0:	.double 5.0
const2:	.double 9.0
const4:	.double 32.0
ct:	.double 0.0		# double ct = 0.0;
const100:	.double 100.0
	.text
	.globl main
	
main:			# int main(void){
	addiu $sp,$sp,-4	# Guardar o $ra;
	sw $ra,0($sp)
	
	la $t0,ct	# $f8 = ct;
	l.d $f8,0($t0)
	
	la $t0,const100	# $f10 = 100.0;
	l.d $f10,0($t0)
	
while:	c.le.d $f8,$f10	# while(ct <= 100.0) {
	bc1f endw
	
	li $v0,7	# ft = read_double();
	syscall
	mtc1 $v0,$f12
	
	jal f2c		# ct = f2c(ft);
	mov.d $f8,$f0
	
	li $v0,3	# print_double(ct);
	mfc1 $a0,$f8
	syscall

	j while		
endw:			# }
	lw $ra,0($sp)	# Repor o $ra;
	addiu $sp,$sp,4

	li $v0,0	# return 0;

	jr $ra		# }
	
f2c:			# double f2c(double ft){

	la $t0,const0	# $f0 = 5.0;
	l.d	$f0,0($t0)
	
	la $t0,const2	# $f2 = 9.0;
	l.d	$f2,0($t0)
	
	la $t0,const4	# $f4 = 32.0;
	l.d	$f4,0($t0)
	
	sub.d $f6,$f12,$f4	# return (5.0 / 9.0 * (ft – 32.0));
	mul.d $f6,$f6,$f2
	div.d $f0,$f0,$f6
	
	jr $ra		# }
