	# Mapa de registos:
	# $t0 = val;
	# $t1 = n;
	# $t2 = min;
	# $t3 = max;
	
	.data
str1:	.asciiz	"Digite ate 20 inteiros (zero para terminar):"
str2:	.asciiz "Maximo/minimo sao: "
	.text
	.globl main
	
main:			# void main(void){

	li $t2,0x7FFFFFFF	# int val, n = 0, min = 0x7FFFFFFF, max = 0x80000000;
	li $t3,0x80000000
	
	
	li $v0,4	# print_string("Digite ate 20 inteiros (zero para terminar):");
	la $a0,str1
	syscall
	
do:			# do{
	li $v0,5	# val = read_int();
	syscall
	move $t0,$v0
	
if:	beq $t0,$0,endif	# if (val != 0) {

if2:	ble $t0,$t3,if3		# if (val > max){
	move $t3,$t0		# max = val;
				# }
if3:	bge $t0,$t2,endif	# if (val < min)
	move $t2,$t0		# min = val;
				# }

endif:				# }
	
	addi $t1,$t1,1		# n++;
	
while:	bge $t1,20,skip		# } while ((n < 20) && (val != 0));
	bne $t0,0,do

skip:

	li $v0,4	# print_string("Maximo/minimo sao: ");
	la $a0,str2
	syscall
	
	li $v0,1	# print_int10(max);
	move $a0,$t3
	syscall
	
	
	li $v0,11	#  print_char(':');
	li $a0,':'
	syscall
	
	li $v0,1	# print_int10(min);
	move $a0,$t2
	syscall
	

	jr $ra		# }