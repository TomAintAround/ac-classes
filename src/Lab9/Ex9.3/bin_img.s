	.data
	
	.text
	.globl	bin_img
	
bin_img:
	move $t0, $zero
	mul $t1, $a1, $a2

	loop:
		bge $t0, $t1, loopEnd

		lb $t2, 0($a0)

		bgt $t2, $a3, condElse
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
	
	jr $ra
