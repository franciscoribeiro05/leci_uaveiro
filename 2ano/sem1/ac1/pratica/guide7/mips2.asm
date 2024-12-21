	.data
string: .asciiz "olleh"    # String a ser invertidas
newline: .asciiz "\n"      # Para imprimir uma nova linha
                           
	.text
	.globl main

main:                    # void main(void) {
    addiu $sp, $sp, -4    # Guardar o $ra antes de chamar a função
    sw $ra, 0($sp)

    la $a0, string        # Passa o endereço da string para $a0 (parâmetro da strrev)
    jal strrev            # Chama a função strrev

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