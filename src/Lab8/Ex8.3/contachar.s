	.data
	
	.text
	.globl	conta_char
	
conta_char:
	move $v0, $zero
	move $t0, $zero
	
	loop:
		lbu $t1, 0($a0)
		beq $t1, $zero, end
		
		bne $t1, $a1, endCond
		addi $v0, 1
		endCond:

		addi $t0, $t0, 1
		addi $a0, $a0, 1
		j loop
	end:
	sub $a0, $a0, $t0

	jr	$ra
