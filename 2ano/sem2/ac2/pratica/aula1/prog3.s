	# Mapa de registos:
	# $t0 = cnt;
	# $t1 = c;

	.data
	.text

	.globl main
main:
	li $t0,0	# int cnt = 0;
	

do:			# do{
	li $v0,1	# c = inkey();
	syscall
	move $t1,$v0

if:	beq $t1,0,else	# if( c != 0 ){
	
	li $v0,3	# putChar( c );
	move $a0,$t1
	syscall

else:	li $v0,3	# putChar('.');
	li $a0,'.'
	syscall

	addi $t0,$t0,1	# cnt++;

while:	bne $t1,'\n',do	# } while( c != '\n' );
	
	li $v0,6	# printInt(cnt, 10);
	move $a0,$t0
	li $a1,10
	syscall			
	
	li $v0,0	# return 0;
	
	jr $ra	# }
