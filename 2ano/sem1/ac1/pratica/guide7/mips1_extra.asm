	# Mapa de registo:
	# $v0 = res;
	# $t1 = p;
	# $a0 = int *array;
	# $a1 = int n;
	
	.data
int1:	.word 12
int2:	.word 11
int3:	.word 10 
array:	.word int1,int2,int3
	.text
	.globl main
	
main:			# void main(void){
	addiu $sp,$sp,-4	# guardar $ra antes de chamar a fuunção(sub-rotina);
	sw $ra,0($sp)
	
	la $a0,array	# $a0 = int *array
	li $a1,3
	
	jal soma	# soma(int *array,int n)
	
	lw $ra,0($sp)
	jr $ra		# }
soma:	
	li $v0,0	# int res = 0;
	la $t1,array	# p = array;
	
	sll $t5,$a1,2	# $t5 = &(array[n];
	addu $t5,$t5,$t1
	
while:
	bgeu $t1,$t5,endw	# while (p < &(array[n]){z

	lw $t4,0($t1)		# res += (*p);
	add $v0,$v0,$t4
	
	addiu $t1,$t1,4		# p++;
	j while
endw:				# }

	jr $ra
