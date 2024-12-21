	.data
const1:	.float 2.59375
const2:	.float 0.0
	.text
	.globl main
	
	#Mapa de registos:
	# $f2 = res;
	# $t0 = val;
	# $f4 = constante (2.59375);
	
main:			# int main(void){


do:	li $v0,5	# val = read_int();
	syscall
	move $t0,$v0
	
	
	
	mtc1 $t0,$f2 	# res = (float)val;
	cvt.s.w $f2,$f2
	
	la $t1,const1
	l.s $f4,0($t1)	# res = (float)val * 2.59375;
	mul.s $f2,$f2,$f4
	
	li $v0,2	# print_float( res );
	mov.s $f12,$f2
	syscall
	
	la $t1,const2		# } while(res != 0.0);
	mtc1 $t1,$f6
	c.eq.s $f2,$f6
while:	bc1f do

	li $v0,0	# return 0;
	
	jr $ra # }
	
	
	