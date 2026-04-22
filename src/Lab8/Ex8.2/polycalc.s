		.data

		.text
		.globl	polycalc
polycalc:
	lw $t0, 16($sp)
	
	add $t1, $a0, $a1

	li $t2, -3
	mul $t2, $t2, $a3
	mul $t2, $t2, $t0
	add $t2, $t2, $a2

	mul $v0, $t1, $t2
	li $t3, 5
	mul $v0, $v0, $t3

	jr	$ra
