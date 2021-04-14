ori $ra $zero 0x1
ori $t0 $zero 0x0
ori $s0 $zero 0x4
ori $fp $zero 0x3
AGAIN:
addu $t0 $t0 $s0
lui $t4 0x1234
ori $t5 $t4 0x87
ori $s3 $s2 0x65
subu $s4 $s3 $s2
addu $s5 $s4 $s1 
ori $s6 $s5 0x43
sw $s6 8($zero)
sw $s5 4($zero)
lw $s7 4($zero)
lw $t8 8($zero)
addu $t9 $s7 $t8
subu $k0 $t9 $s6
ori $a0 $zero 16
ori $a1 $zero 24
sw $t9 -4($a0)
sw $k0 -8($a1)
lw $a2 -8($a0)
lw $a3 -12($a1)
ori $v0 $a1 0x999
sw $v0 4($a0)
subu $s0 $s0 $ra
beq $s0 $fp AGAIN
sw $t0 4($a1)
 