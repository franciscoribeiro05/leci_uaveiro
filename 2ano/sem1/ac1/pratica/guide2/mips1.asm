	.data
	.text
	.globl main
	
main:	ori $t0,$0,0x1234
	xori $t1,$t0,0xFFFF
	and $t2,$t1,$t0
	or $t3,$t1,$t0
	nor $t4,$t1,$t0
	xor $t5,$t1,$t0
	
	jr $ra #fim do programa
	
	
