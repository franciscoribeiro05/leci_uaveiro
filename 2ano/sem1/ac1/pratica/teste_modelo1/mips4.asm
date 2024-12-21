        .data                   # 0x10010000
X1:     .asciiz "TEST1"         #
        .align 2                #
X2:     .space 20               #
X3:                             #

        .text                   # 0x00400000
        .globl main             #
main:   la      $t4, X2         #	
        ori     $t5, $0, 4      #	int SIZE = 4;
        xor     $t0, $t0, $t0   #	int i = 0;
        xor     $t1, $t1, $t1   #	$t1 = 0;
L1:     beq     $t0, $t5, L2    #	while (i < SIZE){
        add     $t2, $t0, $t0   #		$t2 = 2i;
        add     $t3, $t2, $t2   #		$t3 = 4i;
        addu    $t3, $t3, $t4   #		$t3 = &(X2[4i]);
        sw      $t2, 0($t3)     #		X2[4i] = 2i;
        add     $t1, $t1,$t2    #		$t1 += 2i;
        addi    $t0, $t0, 1     #	i++;
        j       L1              #	}
L2:     sw      $t1, 4($t3)     #
        jr      $ra             #
