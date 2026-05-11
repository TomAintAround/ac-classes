.text
.globl mix_table
mix_table:
	addi $sp, $sp, -8
	sw $a1, 4($sp)
	sw $a0, 0($sp)

	move $v0, $zero
	move $t0, $zero
	loop:
		bge $t0, $a2, endLoop

		lbu $t1, 0($a0)
		lbu $t2, 0($a1)
		andi $t3, $t1, 15  # 0b1111
		andi $t4, $t2, 15  # 0b1111
			
		bge $t3, $t4, endCond
			sb $t2, 0($a0)
			addi $v0, $v0, 1
		endCond:

		addi $a0, $a0, 1
		addi $a1, $a1, 1
		addi $t0, $t0, 1
		j loop
	endLoop:

	lw $a0, 0($sp)
	lw $a1, 0($sp)
	addi $sp, $sp, 8
	jr $ra
