	.data
	
	.text
	.globl	max
	.globl	min
	
max:
	move $t0, $zero
	move $t1, $zero
	lw $v0, 0($a0)
	addi $t0, $t0, 1
	addi $t1, $t1, 4
	addi $a0, $a0, 4
	
	loop1:
		bge $t0, $a1, end1

		lw $t2, 0($a0)
		bge $v0, $t2, endCond1
		move $v0, $t2
		endCond1:
		
		addi $t0, $t0, 1
		addi $t1, $t1, 4
		addi $a0, $a0, 4
		j loop1
	end1:
	sub $a0, $a0, $t1

	jr	$ra

min:
	move $t0, $zero
	move $t1, $zero
	lw $v0, 0($a0)
	addi $t0, $t0, 1
	addi $t1, $t1, 4
	addi $a0, $a0, 4
	
	loop2:
		bge $t0, $a1, end2

		lw $t2, 0($a0)
		ble $v0, $t2, endCond2
		move $v0, $t2
		endCond2:
		
		addi $t0, $t0, 1
		addi $t1, $t1, 4
		addi $a0, $a0, 4
		j loop2
	end2:
	sub $a0, $a0, $t1

	jr	$ra
