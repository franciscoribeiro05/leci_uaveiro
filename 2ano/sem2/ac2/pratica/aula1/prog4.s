	.equ print_str, 8
	.equ read_int10, 5
	.equ print_int10, 7
	.equ print_int, 6

	.data
str1:   .asciiz "\nIntroduza um inteiro (sinal e módulo): "
str2:   .asciiz "\nValor em base 10 (signed): "
str3:   .asciiz "\nValor em base 2: "
str4:   .asciiz "\nValor em base 16: "
str5:   .asciiz "\nValor em base 10 (unsigned): "
str6:   .asciiz "\nValor em base 10 (unsigned), formatado: "

	.text
	.globl main

main:
	li $t1, 1
while:
	beq $t1, 0, endw  # while(1) loop infinito

	# printStr("\nIntroduza um inteiro (sinal e módulo): ");
	li $v0, print_str
	la $a0, str1
	syscall

	# value = readInt10();
	li $v0, read_int10
	syscall
	move $t0, $v0

	# printStr("\nValor em base 10 (signed): ");
	li $v0, print_str
	la $a0, str2
	syscall

	# printInt10(value);
	li $v0, print_int10
	move $a0, $t0
	syscall

	# printStr("\nValor em base 2: ");
	li $v0, print_str
	la $a0, str3
	syscall

	# printInt(value, 2);
	li $v0, print_int
	move $a0, $t0
	li $a1, 2
	syscall

	# printStr("\nValor em base 16: ");
	li $v0, print_str
	la $a0, str4
	syscall

	# printInt(value, 16);
	li $v0, print_int
	move $a0, $t0
	li $a1, 16
	syscall

	# printStr("\nValor em base 10 (unsigned): ");
	li $v0, print_str
	la $a0, str5
	syscall

	# printInt(value, 10);
	li $v0, print_int
	move $a0, $t0
	li $a1, 10
	syscall

	# printStr("\nValor em base 10 (unsigned), formatado: ");
	li $v0, print_str
	la $a0, str6
	syscall

	# printInt(value, 10 | 5 << 16);
	li $v0, print_int
	move $a0, $t0
	lui $a1,5
	ori $a1,$a1, 10
	syscall

	j while  # Repetir o loop

endw:
	li $v0, 0  # return 0;
	jr $ra
