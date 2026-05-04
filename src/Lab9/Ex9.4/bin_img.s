	.data
	
	.text
	.globl	bin_img
	
bin_img:
	addi $sp, $sp, -16
	sw $ra, 12($sp)
	sw $s2, 8($sp)
	sw $s1, 4($sp)
	sw $s0, 0($sp)
	move $s0, $a0
	move $s1, $a1
	move $s2, $a2

	jal calcular_limiar
	move $a0, $s0
	move $a1, $s1
	move $a2, $s2
	move $t3, $v0

	move $t0, $zero
	mul $t1, $a1, $a2

	loop:
		bge $t0, $t1, loopEnd

		lb $t2, 0($a0)

		bgt $t2, $t3, condElse
		move $t2, $zero
		j condEnd
		condElse:
		li $t2, 255
		condEnd:
		sb $t2, 0($a0)

		addi $a0, $a0, 1
		addi $t0, $t0, 1
		j loop
	loopEnd:
	
	lw $s0, 0($sp)
	lw $s1, 4($sp)
	lw $s2, 8($sp)
	lw $ra, 12($sp)
	addi $sp, $sp, 16
	jr $ra
