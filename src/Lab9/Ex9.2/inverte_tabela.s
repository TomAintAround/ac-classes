		.data

		.text
		.globl	inverte_tabela
inverte_tabela:
	move $t0, $zero
	addi $t1, $a1, -1

	loop:
		bge $t0, $t1, end

		sll $t2, $t0, 2
		add $t2, $a0, $t2

		sll $t3, $t1, 2
		add $t3, $a0, $t3

		lw $t4, 0($t2)
		lw $t5, 0($t3)

		sw $t5, 0($t2)
		sw $t4, 0($t3)

		addi $t0, $t0, 1
		addi $t1, $t1, -1
		j loop
	end:

	jr $ra
