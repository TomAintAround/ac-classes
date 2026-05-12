.text
.globl codifica_nibbles
codifica_nibbles:
	addi $sp, $sp, -4
	sw $a0, 0($sp)

	move $v0, $zero
	move $t0, $zero
	loop:
		bge $t0, $a1, endLoop

		lbu $t1, 0($a0)
		srl $t2, $t1, 4
		andi $t2, $t2, 15  # 0b1111
		
		bge $t2, $a2, endCond
			sll $t1, $t1, 1
			sb $t1, 0($a0)
			addi $v0, $v0, 1
		endCond:
		
		addi $a0, $a0, 1
		addi $t0, $t0, 1
		j loop
	endLoop:

	lw $a0, 0($sp)
	addi $sp, $sp, 4
	jr $ra
