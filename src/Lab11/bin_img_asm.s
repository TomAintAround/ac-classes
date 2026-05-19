	.data
	
	.text
	.globl	bin_img_asm
bin_img_asm:
	addi $sp, $sp, -4
	sw $a0, 0($sp)

	move $t0, $zero
	mul $t1, $a1, $a2
	move $t2, $zero
	loopLimiar:
		bge $t0, $t1, endLoopLimiar

		lbu $t3, 0($a0)
		addu $t2, $t2, $t3

		addi $t0, $t0, 1
		addi $a0, $a0, 1
		j loopLimiar
	endLoopLimiar:
	div $t3, $t2, $t1
	lw $a0, 0($sp)

	move $t0, $zero
	loopSubs:
		bge $t0, $t1, endLoopSubs

		lbu $t2, 0($a0)

		bgt $t2, $t3, condElse
			move $t2, $zero
			j condEnd
		condElse:
			li $t2, 255
		condEnd:
		sb $t2, 0($a0)

		addi $a0, $a0, 1
		addi $t0, $t0, 1
		j loopSubs
	endLoopSubs:
	
	lw $a0, 0($sp)
	addi $sp, $sp, 4
	jr $ra
