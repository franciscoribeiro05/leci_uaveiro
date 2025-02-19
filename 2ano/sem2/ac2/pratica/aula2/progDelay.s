	# Mapa de registos:
	#
	#
	#

	.data
	.text
	.globl main

main:		# int main(){
	
	li $a0,1
	jal delay

	li $v0,0	# return 0;
	jr $ra	# }



delay:	li $v0,12	# resetCoreTimer();

while:			# while(readCoreTimer() < K * ms){
	


	j while
endw:			# }
