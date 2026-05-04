	.text
	.globl calcular_limiar
calcular_limiar:
	move $t0, $zero
	mul $t1, $a1, $a2
	move $t2, $zero
	loop:
		bge $t0, $t1, end

		lb $t3, 0($a0)
		add $t2, $t2, $t3

		addi $t0, $t0, 1
		addi $a0, $a0, 1
		j loop
	end:

	div $v0, $t2, $t1
	jr $ra
