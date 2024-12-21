	#Mapa de registos:
	# i = $t0;
	
	.data
str1:	.asciiz "callipo"
str2:	.asciiz "abcdefg"
	.text
	.globl main
	
main:			# void main(void){
	la $a0,str2
	la $a1,str1
	
	addiu $sp,$sp,-4 # Guardar o $ra antes de chamar a função;
	sw $ra,0($sp)
	
	jal strcopy	# char *strcpy(char *dst, char *src);
	
	lw $ra,0($sp)	# Restaurar o $ra após a chamada da função;
	
	move $a0,$v0	# print_string(dst)
	li $v0,4
	syscall
	
	jr $ra		# }
	
	
strcopy:	li $t0,0	# int i=0;


do:	move $t1,$t0		# $t1 = &(src[i]);
	addu $t1,$t1,$a1
	
	lb $t2,0($t1)		# $t2 = src[i];
	
	move $t3,$a0		# $t3 = &(dst[i]);
	addu $t3,$t3,$t0
	
	sb $t2,0($t3)		# dst[i] = src[i];
	
	#addu $t4,$a1,$t0
	#lb $t4,0($t4)
	
	addi $t0,$t0,1	# i++;
	
while:	bne $t2,'\0',do
	
	move $v0,$a0	# 	return dst;
	
	jr $ra		# }