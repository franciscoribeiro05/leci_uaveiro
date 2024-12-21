	.data
sum:	.double 0.0 	# double sum = 0.0;
	.text
	.globl func3
	
#*******************************************************************************************************************
	
	
	#typedef struct{
	#			|	Align	|	Size	|	Offset	|
	#	int acc;	|	4	|	4	|	0	|
	#   unsigned char nm;	|	1	|	1	|	4	|
	#     double grade;	|	8	|	8	|     5 -> 8	|
	#    char quest[14];	|	1	|	14	|	16	|
	#	int cq;		|	4	|	4	|    30 -> 32	|
	#	}t_kvd;		|	8	|     	36    	|		|

														  
#*******************************************************************************************************************
	
	# Mapa de registos:
	# $t0 = i;
	# $t1 = nv;
	# $t2 = pt;
	# $t3 = j;
	# $f2 = sum;
	
func3:			# double

	la $t9,sum	# $f2 = sum;
	l.d $f2,0($t9)
	
	move $t1,$a0	# $t1 = nv;
	move $t2,$a1	# $t2 = pt;

	li $t0,0	# int i = 0;

while:	bge $t0,$t1,endw	# while(i < nv){

	li $t3,0	# int j = 0;
	
do:	
	addiu $t4,$t2,16	# $t4 = &(pt -> quest[0]);
	addu $t4,$t4,$t3	# $t4 = &(pt -> quest[j]);
	
	lb $t4,0($t4)		# $t4 = pt -> quest[j];

	mtc1 $t4,$f4
	
	cvt.d.w	$f4,$f4		# $f4 = (double) pt -> quest[j];
	
	add.d $f2,$f2,$f4	# sum += (double) pt -> quest[j];
	
	addi $t3,$t3,1	# j++;
	
	addiu $t4,$t2,4		# $t4 = (pt -> nm);
	lw $t4,0($t4)

whiled:	blt $t3,$t4,do 		# while(j < pt -> nm);
	
	addiu $t4,$t2,8		# $f10 = (pt -> grade);
	l.d $f10,0($t4)
	
	div.d $f10,$f2,$f10	# pt -> acc = (int) (sum / pt -> grade);
	cvt.w.d $f10,$f10
	s.d $f10,0($t2)
	
	addi $t1,$t1,36	# pt++;
	addi $t0,$t0,1	# i++;
	j while
endw:			# }

	addiu $t4,$t2,8		# $f10 = (pt -> grade);
	l.d $f10,0($t4)
	
	addiu $t4,$t2,32		# $f10 = (pt -> cq);
	l.d $f16,0($t4)
	
	cvt.d.w $f16,$f16	# (double) pt -> cq;
	
	mul.d $f0,$f10,$f16	# return (pt -> grade * (double) pt -> cq);
	
	jr $ra	# }
