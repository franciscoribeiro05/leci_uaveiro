    
    .equ ADDR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ PORTE, 0x6110
    .equ LATE, 0x6120
    .equ TRISD, 0x60C0
    .equ PORTD, 0x60D0

    .data
    .text
    .globl main


main:

    #Saída do porto RE0:

    lui $t1, ADDR_BASE_HI   #$t1 = 0xBF880000
    lw $t2, TRISE($t1)      #Lê o valor de Trise de 0xBF880000 + 0x6100 = 0xBF886100
    andi $t2, $t2, 0xFFFE   #Põe o bit 0 a 0 (output)
    sw $t2, TRISE($t1)      #Escreve o valor de $t2 em 0xBF886100

    #Porto RD8 como entrada:

    lw $t2, TRISD($t1)      #Lê o valor de Trise de 0xBF880000 + 0x6100 = 0xBF886100
    ori $t2, $t2, 0x0100    #Põe o bit 8 a 1 (input)
    sw $t2, TRISD($t1)      #Escreve o valor de $t2 em 0xBF886100

ciclo_infinito:

    #Ler valor do porto de entrada e escrever no porto de saída:

    lw $t2, PORTD($t1) 
    srl $t2, $t2, 8          # Shift bit 8 para bit 0

    lw $t3, LATE($t1)
    andi $t3, $t3, 0xFFFE
    or $t3, $t3, $t2
    sw $t3, LATE($t1)

    j ciclo_infinito



