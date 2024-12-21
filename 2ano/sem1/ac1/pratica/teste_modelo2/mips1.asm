	.data
	.eqv SIZE,15
str1:	.asciiz "Invalid Argc"
	.text
	.globl func1
	
	# Mapa de registos:
	# $s0 = i;
	# $s1 = res;
	# $s2 = k;
	# $s3 = f1;
	# $s4 = *av;
	
func1:			# int func1(int *f1,int k, char *av[]){

	addiu $sp,$sp,-4	# Guardar o $ra;
	sw $ra,0($sp)
	
	addiu $sp,$sp,-20	# Guardar o $ra;
	sw $s0,0($sp)
	sw $s1,4($sp)
	sw $s2,8($sp)
	sw $s3,12($sp)
	sw $s4,16($sp)
	
	

	move $s3,$a0	# $s3 = f1;
	move $s2,$a1	# $s2 = k;
	move $s4,$a2	# $s4 = *av;
	
if:	blt $s2,2,else	# if(k >= 2 && k <= SIZE){
	bgt $s2,SIZE,else
	
	li $s0,2	# i = 2;
	
do:	sll $t0, $s0, 2 
	addu $t0,$s4,$t0	# $t0 = &(av[i]);
	lw $a0, 0($t0)
	
	jal toi			# toi(av[i]);
	
	sll $t0,$s0,2	# $t0 = i * 4;
	
	addu $t0,$t0,$s3	# $t0 = &(f1[i]);
	
	sw $v0,0($t0)	# f1[i] = toi(av[i]);
	
	addi $s0,$s0,1	# i++;

while:	blt $s0,$s2,do

	move $a0,$s3
	move $a1,$s2
	
	jal avz			# avz(f1,k);
	
	
	move $s1,$v0	# res = avz(f1,k);
	
	li $v0,1	# print_int10(res);
	move $a0,$s1
	syscall
	
	j skip_else	# }
else:			
	
	li $v0,4	# print_string("Invalid Argc");
	la $a0,str1
	syscall 
	
	li $s1,-1	# res = -1;	
	
skip_else:	# }

	move $v0,$s1	# return res;
	
	lw $s0,0($sp)
	lw $s1,4($sp)
	lw $s2,8($sp)
	lw $s3,12($sp)
	lw $s4,16($sp)
	addiu $sp,$sp,20
	
	
	lw $ra,0($sp)		# Restaurar o $ra;
	addiu $sp,$sp,4
	
	

	jr $ra	# }