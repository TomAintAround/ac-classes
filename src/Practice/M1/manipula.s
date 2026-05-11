.text
.globl manipula
manipula:
	addi $sp, $sp, -4
	sw $a0, 0($sp)

	move $v0, $zero
	move $t0, $zero
	loop:
		bge $t0, $a1, endLoop

		lbu $t1, 0($a0)
		andi $t2, $t1, 1
		
		bne $t2, $zero, else
			addi $v0, $v0, 1  # 0b1
			j endCond
		else:
			andi $t3, $t1, 224  # 0b11100000
			srl $t3, $t3, 5
			andi $t4, $t1, 31  # 0b00011111
			sll $t4, $t4, 3
			or $t4, $t4, $t3
			sb $t4, 0($a0)
		endCond:

		addi $a0, $a0, 1
		addi $t0, $t0, 1
		j loop
	endLoop:

	lw $a0, 0($sp)
	addi $sp, $sp, 4
	jr $ra
