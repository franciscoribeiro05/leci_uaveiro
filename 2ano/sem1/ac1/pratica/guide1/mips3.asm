	.data
	.text
	.globl main

main:  
    ori $v0, $0, 5      # Define a syscall para ler um inteiro (código 5)
    syscall              # Chama a syscall "read_int()"
    or $t0, $0, $v0     # Armazena o valor lido em $t0
                        # (valor de x pretendido)
                        
    ori $v0,$0,34                    
                        
    ori $t2, $0, 8      # Armazena o valor 8 em $t2
    add $t1, $t0, $t0   # $t1 = 2 * x
    sub $t1, $t1, $t2   # $t1 = y = 2 * x - 8
                        # ($t1 agora contém o valor calculado de y)                        
                     
                        
    or $a0, $0, $t1     # Prepara $a0 para impressão (resultado y)
    ori $v0, $0, 1      # Define a syscall para imprimir um inteiro (código 1)
    syscall              # Chama a syscall "print_int"
    
    
    ori $a0, $0, 10     # Carrega o valor ASCII de nova linha em $a0
    ori $v0, $0, 11     # Syscall para imprimir caractere (código 11)
    syscall              # Chama a syscall "print_char"
    
    or $a0,$0,$t1
    ori $v0,$0,34
    syscall
    
    
    ori $a0, $0, 10     # Carrega o valor ASCII de nova linha em $a0
    ori $v0, $0, 11     # Syscall para imprimir caractere (código 11)
    syscall              # Chama a syscall "print_char"

    jr $ra               # Fim do programa