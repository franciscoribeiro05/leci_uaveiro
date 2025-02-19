	.equ read_timer,11
	.equ reset_timer,12
	.equ put_char,3
	.equ print_int,6
	
	# Mapa de registos:
	# counter = $t0;
	# $t1 = 200000;


	.data
	.text
	.globl main

main:	li $t0,0	# int counter = 0;
	li $t1,20000000
while:			# while(1){
	li $v0,put_char	# putChar('\r');
	li $a0,'\r'
	syscall

	li $v0,print_int	# printInt(counter, 10 | 4 << 16);
	move $a0,$t0
	li $a1,0x0004000A
	syscall	
	
	li $v0,reset_timer
	syscall

while2:
	li $v0,read_timer
	syscall
	
	bge $v0,$t1,endw2	# while(readCoreTimer() < 200000){
	
	addi $t0,$t0,1	# counter++;

	j while2
endw2:				# }

	j while

	li $v0,0	# return 0;
	jr $ra		# }
