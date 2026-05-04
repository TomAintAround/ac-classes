		.data

		.text
		.globl	manipula_tabela
manipula_tabela:
	addi $sp, $sp, -12
	sw $ra, 8($sp)
	sw $s0, 4($sp)
	sw $s1, 0($sp)
	move $s0, $a0
	move $s1, $a1

	move $t0, $zero
	loop:
		bge $t0, $a1, end

		lw $t2, 0($a0)
		sll $t2, $t2, 1
		sw $t2, 0($a0)
		addi $a0, $a0, 4
		addi $t0, $t0, 1

		j loop
	end:

	move $a0, $s0
	move $a1, $s1
	jal inverte_tabela

	lw $s1, 0($sp)
	lw $s0, 4($sp)
	lw $ra, 8($sp)
	addi $sp, $sp, 12
	jr $ra
