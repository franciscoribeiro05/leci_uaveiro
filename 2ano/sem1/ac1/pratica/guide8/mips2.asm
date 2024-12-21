	.data
string: .space 32  # String a ser invertidas
newline: .asciiz "\n"      # Para imprimir uma nova linha
                           
	.text
	.globl main

main:                    # void main(void) {
    addiu $sp, $sp, -4    # Guardar o $ra antes de chamar a função
    sw $ra, 0($sp)

    li $a0,123
    li $a1,10
    la $a2,string
    jal itoa

    lw $ra, 0($sp)        # Restaura o valor de $ra
    addiu $sp, $sp, 4

    # Imprime a string invertida
    la $a0, string        # Carrega o endereço da string
    li $v0, 4             # syscall para imprimir string
    syscall

    # Imprime uma nova linha
    la $a0, newline       # Carrega o endereço do '\n'
    li $v0, 4             # syscall para imprimir string
    syscall

    jr $ra                # }
    
    
#---------------------------------------------------------------------------------------------

exchange: 		# void exchange(char *c1, char *c2){
	lb $t0,0($a0)	# char aux = *c1;
	
	lb $t1,0($a1)	# *c1 = *c2;
	sb $t1,0($a0)
	
	sb $t0,0($a1)	# *c2 = aux;
	
	jr $ra		# }
			
strrev:			# char *strrev(char *str){

	addiu $sp,$sp,-8
	sw $s0,0($sp)
	sw $s1,4($sp)


	move $s0,$a0	# char *p1 = str;
	move $s1,$a0	# char *p1 = str;
	
while:
	lb $t2,0($s1)	# $s2 = *p2;
	beq $t2,'\0',endw	# while(*p2 != '\0'){
	
	addiu $s1,$s1,1		# p2++;
	
	j while		# Volta para o início do loop;
endw:			# }

	addiu $s1,$s1,-1	# p2--;
	
while2:	bge $s0,$s1,endw2	# while( p1 < p2 )
	
	addiu $sp,$sp,-4	# Salvaguardar $ra;
	sw $ra,0($sp)
	
	move $a0,$s0		# Passar os parâmetros à função;
	move $a1,$s1
	
	jal exchange		# exchange(p1, p2);
	
	lw $ra,0($sp)		# restaurar $ra;
	addiu $sp,$sp,4
	
	addiu $s0,$s0,1		# p1++;
	addiu $s1,$s1,-1	# p2--;
	
	j while2
endw2:				# }

	lw $s0,0($sp)
	lw $s1,4($sp)
	addiu $sp,$sp,8


	jr $ra			# }
	
#---------------------------------------------------------------------------------------------

toascii:		# char toascii(char v){
	
	move $t0,$a0		
	addi $t0,$t0,'0'	# v += '0';
	
if:	ble $t0,'9',endif	# if( v > '9' ){
	
	addi $t0,$t0,7	# v += 7; // 'A' - '9' - 1

endif:			# }

	move $v0,$t0	# return v;
	
	jr $ra 		# }
	
	
	# Mapa de registos (itoa):
	# $s0 = p;
	# $s1 = digit;
	# $s2 = n;
	
itoa:	 

	move $s0,$a2	# char *p = s;
	
do:

	rem $s1,$a0,$a1	# digit = n % b;
	
	div $a0,$a1	# n = n / b;
	mflo $s2	# $s2 = n;
	
	move $a0,$s1	# *p++ = toascii( digit );
	jal toascii
	sb $v0,0($s0)
	addiu $s0,$s0,1
	
while_itoa:	bgt $s2,0,do	# while( n > 0 ){

	sb $0,0($s0)	# *p = '\0';
	
	move $a0,$a2
	jal strrev
	
	move $v0,$a0
	