	.data
	.align 2

stg:    .word 0           # id_number
        .space 18         # first_name
        .space 15         # last_name
        .float 20.0        # grade

nmec:   .asciiz "\nN. Mec: "
nome:   .asciiz "\nNome: "
nota:   .asciiz "\nNota: "

	.text
	.globl main

main:       # int main(void){
    la $t0, stg

   
    la $a0, nmec       # print_string("\nN. Mec: ");
    li $v0, 4
    syscall

    li $v0, 5          # read_int();
    syscall

    sw $v0, 0($t0)     # Armazena id_number em stg.id_number

   
    la $a0, nome       # print_string("\nNome: ");
    li $v0, 4
    syscall

    li $v0, 8          # syscall para read_string
    addiu $a0, $t0, 4  # Endereço para stg.first_name
    li $a1, 18         # Tamanho máximo do first_name
    syscall

   
    li $v0, 8          # syscall para read_string
    addiu $a0, $t0, 22 # Endereço para stg.last_name
    li $a1, 15         # Tamanho máximo do last_name
    syscall

    la $a0, nmec       # print_string("\nN. Mec: ");
    li $v0, 4
    syscall
    
    
    lw $a0, 0($t0)     # print_intu10(stg.id_number);
    li $v0, 36
    syscall

   
    la $a0, nome       # print_string("\nNome: ");
    li $v0, 4
    syscall

    addiu $a0, $t0, 22 # print_string(stg.last_name);
    li $v0, 4
    syscall

    li $a0, ','        # print_char(',');
    li $v0, 11
    syscall

    addiu $a0, $t0, 4  # print_string(stg.first_name);
    li $v0, 4
    syscall

   
    la $a0, nota       # print_string("\nNota: ");
    li $v0, 4
    syscall

    l.s $f12, 40($t0)  # print_float(stg.grade);
    li $v0, 2
    syscall

    li $v0, 0          # return 0;
    jr $ra             # }
