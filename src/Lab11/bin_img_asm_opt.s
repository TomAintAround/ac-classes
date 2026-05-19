	.data
	
	.text
	.globl	bin_img_asm
bin_img_asm:
	.set noreorder

	addi $sp, $sp, -4
	sw $a0, 0($sp)

	addu $t0, $zero, $zero
	mult $a1, $a2
	mflo $t1
	addu $t2, $zero, $zero
	loopLimiar:
		beq $t0, $t1, endLoopLimiar
		nop

		lbu $t3, 0($a0)
		addi $t0, $t0, 1
		addi $a0, $a0, 1
		addu $t2, $t2, $t3
		j loopLimiar
		nop
	endLoopLimiar:
	div $t2, $t1
	mflo $t3
	lw $a0, 0($sp)

	addu $t0, $zero, $zero
	loopSubs:
		beq $t0, $t1, endLoopSubs
		nop

		lbu $t2, 0($a0)
		addi $t0, $t0, 1

		# pixel < limiar: 1
		#                 1 XOR 1 = 0
		#                 0 - 0 = 0
		# pixel >= limiar: 0
		#                 0 XOR 1 = 1
		#                 0 - 1 = 0b...[11111111] = 255
		slt $t6, $t2, $t3
		xori $t6, $t6, 1
		subu $t6, $zero, $t6
		sb $t6, 0($a0)

		addi $a0, $a0, 1
		j loopSubs
		nop
	endLoopSubs:
	
	addi $sp, $sp, 4
	jr $ra
	nop

	.set reorder
