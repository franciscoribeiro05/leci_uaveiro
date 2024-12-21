	.data 	
oldg:	.float -1.0
g:	.float 1.0
s:	.float 0.0
	.text
	.globl func2
	
	# Mapa de registos:
	# $t0 = k;
	# $t1 = n;
	# $f2 = oldg;
	# $f4 = g;
	# $f6 = t;
	# $f16 = s;
	
func2:			# float func2(float *a, float t, int n){
	
	li $t0,0	# int k = 0;
	
	move $t1,$a1	# $t1 = n;
	
	la $t9,oldg	# $f2 = oldg;
	l.s $f2,0($t9)
	
	la $t9,g	# $f4 = g;
	l.s $f4,0($t9)
	
	la $t9,s	# $f16 = s;
	l.s $f16,0($t9)
	
	mov.s $f6,$f14	# $f6 = t;
	
for:	bge $t0,$t1,endf	# while(k < n){
	
	sub.s $f8,$f4,$f2	# $f8 = g - oldg;
	
while:	c.le.s $f8,$f6		# while((g -oldg) > t ){
	bc1t endw
	
	mov.s $f2,$f4		# oldg = g;
	
	sll $t2,$t0,2		# $t2 = k * 4;
	
	addu $t2,$t2,$a0	# $t2 = &(a[k]);
	
	l.s $f10,0($t2)		# $f10 = a[k];
	
	add.s $f10,$f4,$f10	# $f10 = g + a[k];
	
	div.s $f4,$f10,$f6	# g = (g + a[k]) / t;
	
	j while
endw:				# }

	add.s $f16,$f16,$f4	# s = s + g;
	s.s $f4,0($t2)		# a[k] = g;
	
	
	addi $t0,$t0,1		# k++;
	j for
endf:				# }

	mtc1 $t1,$f18		# $f18 = n;
	
	cvt.s.w $f18,$f18	# $f18 = (float) n;
	
	div.s $f0,$f16,$f18	# return s / (float) n;


	jr $ra	# }
