	# Mapa de registos:
	# $t0 = len;
	# 
	# 
	
	.data
str1:	.asciiz "Teste"
	.text
	.globl main
	
main:	la $a0,str1		# void main(void){

	move $s0,$ra
	jal strlen_subr
	move $ra,$s0
	
	jr $ra		# }
	
strlen_subr:	li $t0,0	# int len = 0;

	move $t1,$a0	# int strlen(char *s){
	
while:	addiu $t1,$t1,1	# while(*s++ != '\0'){
	lb $t2,0($t1)
	beq $t2,'\0',endw
	
	addi $t0,$t0,1	# len++;
	
	j while
endw:			# }

	move $v0,$t0	# return len;

	jr $ra		# chamar a funcao main de volta (para o meesmo sítio onde estava antes);