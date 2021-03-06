ori $ra $zero 0x1   #$ra used as const 1
ori $t0 $zero 0x0   #$to used to test beq, should =7 <- (4+3)
ori $s0 $zero 0x4   #$s0 counts from 4 down to 3
ori $fp $zero 0x3   #$fp serves as comp2 with s0 for beq
AGAIN:
addu $t0 $t0 $s0    #addu test
lui $t4 0x1234      #lui test
ori $t5 $t4 0x87    #ori test
ori $s3 $s2 0x65    #ori test
subu $s4 $s3 $s2    #subu test
addu $s5 $s4 $s1    #addu test
ori $s6 $s5 0x43    #ori test
sw $s6 8($zero)     #sw test with pos imm
sw $s5 4($zero)     #sw test with pos imm
lw $s7 4($zero)     #lw test with pos imm
lw $t8 8($zero)     #lw test with pos imm
beq $s0 $zero ONE_MORE   #should always fail and just continue
addu $t9 $s7 $t8    #addu test
ori $a0 $zero 16    #ori test
ori $a1 $zero 24    #ori test
sw $t9 -4($a0)      #sw test with neg imm
sw $k0 -8($a1)      #sw test with neg imm
lw $a2 -8($a0)      #lw test with neg imm
lw $a3 -12($a1)     #lw test with neg imm
ori $v0 $a1 0x999   #ori test
sw $v0 4($a0)       #sw test with pos imm
subu $s0 $s0 $ra    #subu test
beq $s0 $fp AGAIN   #beq neg imm test,should brch the first time
subu $fp $fp $ra
beq $s0 $fp ONE_MORE     #beq pos imm test,should jmp to ONE_MORE
lw $t1 4($a0)       #should never exec
ONE_MORE:
lw $t2 4($a0)        #lw test with pos imm
