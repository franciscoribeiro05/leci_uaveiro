	.data
msg1:    .asciiz "Nr. de parametros: "   # printf("Nr. de parametros: ");
msg2:    .asciiz "\nP"                   # printf("\nP");
msg3:    .asciiz ": "                    # printf(": ");
param1:  .asciiz "parametro1"            # Exemplo de argv[0]
param2:  .asciiz "parametro2"            # Exemplo de argv[1]
argv:    .word param1, param2            # Array de ponteiros argv = {param1, param2}

	.text
	.globl main

main:
    # Inicializa os argumentos argc e argv
    li $a0, 2           # argc = 2
    la $a1, argv        # argv = { "parametro1", "parametro2" }

    # Salva os argumentos argc ($a0) e argv ($a1) nos registradores
    move $t0, $a0       # $t0 = argc (int argc)
    move $t1, $a1       # $t1 = argv (char *argv[])

    # Imprime "Nr. de parametros: " (printf("Nr. de parametros: "))
    li $v0, 4           # Serviço print_string
    la $a0, msg1        # Endereço da string "Nr. de parametros: "
    syscall

    # Imprime o número de parâmetros (printf("%d", argc);)
    li $v0, 1           # Serviço print_int
    move $a0, $t0       # $a0 = argc
    syscall

    # Inicializa i = 0 (int i = 0;)
    li $t2, 0           # $t2 = i

loop:                   # Loop: for(i = 0; i < argc; i++)
    bge $t2, $t0, end   # Se i >= argc, sai do loop (if (i >= argc) break;)

    # Imprime "\nP" (printf("\nP");)
    li $v0, 4           # Serviço print_string
    la $a0, msg2        # Endereço da string "\nP"
    syscall

    # Imprime o índice i (printf("%d", i);)
    li $v0, 1           # Serviço print_int
    move $a0, $t2       # $a0 = i
    syscall

    # Imprime ": " (printf(": ");)
    li $v0, 4           # Serviço print_string
    la $a0, msg3        # Endereço da string ": "
    syscall

    # Calcula o endereço do argumento argv[i] (char *arg = argv[i];)
    sll $t3, $t2, 2     # $t3 = i * 4 (tamanho de cada ponteiro na lista)
    add $t3, $t3, $t1   # $t3 = argv + i * 4
    lw $a0, 0($t3)      # $a0 = argv[i]

    # Imprime a string argv[i] (printf("%s", argv[i]);)
    li $v0, 4           # Serviço print_string
    syscall

    # Incrementa i (i++;)
    addi $t2, $t2, 1    # i++
    j loop              # Volta para o início do loop

end:
    jr $ra 	# }
