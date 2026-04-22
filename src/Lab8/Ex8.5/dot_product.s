	.text
	.globl dot_product
dot_product:
	move $v0, $zero
	move $t0, $zero
	move $t1, $zero
	
	loop:
		bge $t0, $a2, end

		lw $t2, 0($a0)
		lw $t3, 0($a1)
		mul $t4, $t2, $t3
		add $v0, $v0, $t4
		
		addi $t0, $t0, 1
		addi $t1, $t1, 4
		addi $a0, $a0, 4
		addi $a1, $a1, 4
		j loop
	end:
	sub $a0, $a0, $t1
	sub $a1, $a1, $t1

	jr $ra
