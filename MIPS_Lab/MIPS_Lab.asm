####################################################################
# Name:      Areeba Shafqat (B24F0209CS187)
#            Hafsa Aftab (B24F0247CS217)
#            Urooj Azmat (B24F2067CS201)
# Date:      2026-05-16 
# Course:    Computer Organization & Assembly Language (COMP-261L)
# Project:   MIPS Processor Simulation - Semester Project
# Description: 
#   This program demonstrates: lw, sw, add, sub, slt, beq
#   Final result (22) is stored in memory location 'final'
####################################################################
.data
var_a:    .word 15                    # Variable A = 15
var_b:    .word 7                     # Variable B = 7
final:    .word 0                     # Memory to store final result

.text
main:

# 1. LOAD FROM MEMORY (lw)
lw $s0, var_a                          # $s0 = 15
lw $s1, var_b                          # $s1 = 7

# 2. ARITHMETIC OPERATIONS (add, sub)
add $s2, $s0, $s1                      # $s2 = 15 + 7 = 22
sub $s3, $s0, $s1                      # $s3 = 15 - 7 = 8

# 3. SET LESS THAN (slt)
slt $t4, $s3, $s2                      # $t4 = 1 (because 8 < 22)

# 4. CONDITIONAL BRANCH (beq) - TAKEN
beq $t4, $t4, skip                     # Branch taken because $t4 == $t4

# 5. NOP - This instruction is SKIPPED due to branch
addi $zero, $zero, 0                   # (skipped)

skip:
# 6. STORE TO MEMORY (sw)
sw $s2, final                          # Store 22 into 'final' memory location

# 7. PROGRAM TERMINATION
li $v0, 10                             # System call code for exit
syscall                                # Terminate program
