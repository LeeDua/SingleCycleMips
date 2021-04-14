lui $t0 12
lui $t1 34
addu $s1 $t1 $t2
lui $t2 56
lui $t3 78
subu $s2 $t3 $t2
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
ori $v1 $a2 0x888
sw $v0 4($a0)
sw $v1 0($a1)
 