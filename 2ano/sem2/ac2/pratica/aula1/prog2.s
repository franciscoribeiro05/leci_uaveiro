	# Mapa de registos:
	# $t0 = cnt;
	# $t1 = c;

	.data
	.text

	.globl main
main:
	li $t0,0	# int cnt = 0;
	

do:			# do{
	li $v0,2	# c = getChar();
	syscall
	move $t1,$v0	
	
	addi $t1,$t1,1	# putChar( c + 1 );
	move $a0,$t1
	li $v0,3
	syscall
	
	addi $t0,$t0,1	# cnt++;

while:	bne $t1,'\n',do	# } while( c != '\n' );
	
	li $v0,6	# printInt(cnt, 10);
	move $a0,$t0
	li $a1,10
	syscall			
	
	li $v0,0	# return 0;
	
	jr $ra	# }
