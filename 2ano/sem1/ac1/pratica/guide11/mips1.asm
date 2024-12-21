	.data
	.align 2

stg:	.word 72343
	.asciiz "Napoleao"
	.space 9
	.asciiz "Bonaparte"
	.space 5
	.float 5.1
	
	
nmec:	.asciiz	"\nN. Mec: "
nome:	.asciiz "\nNome: "
nota:	.asciiz "\nNota: "
	.text
	.globl main
	
	# Código em c:				|Alinhamento	|	Dimensão	|	Offset	|							
	# typedef struct{			|		|			|		|
	# 	unsigned int id_number;		|	4	|	 4		|	0	|	
	#	char first_name[18];		|	1	|	 18		|	4	|
	#	char last_name[15];		|	1	|	 15		|	22	|
	#	float grade;			|	4	|	 4		|    37 -> 40	|
	# } student;				|	4	|	 44		|		|
	
	
main:		# int main(void){
	la $t0,stg
	
	la $a0,nmec	# print_string("\nN. Mec: ");
	li $v0,4
	syscall
	
	lw $a0,0($t0)	# print_intu10(stg.id_number);
	li $v0,36
	syscall
	
	la $a0,nome	# print_string("\nNome: ");
	li $v0,4
	syscall
	
	addiu $a0,$t0,22	# print_string(stg.last_name);
	syscall
	
	li $a0,','	# print_char(',');
	li $v0,11
	syscall
	
	addiu $a0,$t0,4	# print_string(stg.first_name);
	li $v0,4
	syscall

	la $a0,nota	# print_string("\nNota: ");
	syscall
	
	l.s $f12,40($t0)	# print_float(stg.grade);
	li $v0,2
	syscall
	
	li $v0,0	# return 0;
	
	jr $ra	# }