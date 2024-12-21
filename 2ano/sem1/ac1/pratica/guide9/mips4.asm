	.data
	.text
	.globl max
	
	# Mapa de registos:
	# $t0 = p;
	# $t1 = n - 1;
	# $t2 = u;

max:			# double max(double *p, unsigned int n){
	sll $t1,$a1,3	
	addiu $t1,$t1,-8	# $t1 = n - 1;
	move $t0,$a0
	
	addu $t2,$t0,$t1	# double *u = p+n–1;
	
	l.d $f2,0($t0)		# $f2 = *p;
	l.d $f4,0($t0)		# $f4 = max = *p;
	
	addiu $t0,$t0,8 	# p++;
	
while:			
	bgt $t0,$t2,endw	# while(p <= u){
	
if:	c.le.d $f2,$f4	# if(*p > max){
	bc1t endif
	
	l.d $f4,0($t0)	# max = *p;

endif:			# }

	addiu $t0,$t0,8	# p++;
	j while
endw:			# }

	mov.d $f0,$f4	# return max;

	jr $ra	# }