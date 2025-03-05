    # Mapa de registos
    # $t0 = BASE; 
    #
    #


    .data

    .equ BASE,0xBF88

    .equ TRISE,0x6100
    .equ TRISB,0X6040

    .equ LATE, 0x6120
    .equ PORTB, 0x6050

    .text
    .globl main

main:          # int main(void){


    lui $t0,BASE

    lw $t1,TRISE($t0)    # read;
    andi $t1,$t1,0xFFE1  #  modify; | força os bits RE1 até RE4 a 0 e mantém os restantes;
    sw $t1,TRISE($t0)    # write;

    # portos RE configirados como saida;    

    lw $t1,TRISB($t0)   # read;
    ori $t1,$t1,0x000E  # modify; | força os bits RB1 até RB3 a 1 e mantém os restantes;
    sw $t1,TRISB($t0)   # write;

    # portos RB configurados como entrada;
    
    li $t2,0    # int i = 0;

while:

    lw $t1,LATE($t0)
    andi $t1,$t1,0xFFE1
    sll $t3,$t2,1
    or $t1,$t3,$t1
    sw $t1,LATE($t0)

    li $v0,12
    syscall
wait:   li $v0,11
    syscall
    blt $v0,4347826,wait

    addi $t2,$t2,1
    andi $t2,$t2,0x000F

    j while

    jr $ra      # }


