.text
.globl soma

soma:
	addi $sp, $sp, -8
	sw $a0, 4($sp)
	sw $ra, 0($sp)

	ble $a0, $zero, specialCase

	addi $a0, $a0, -1
	jal soma
	lw $a0, 4($sp)
	add $v0, $v0, $a0

	j end

specialCase:
	move $v0, $zero

end:
	lw $ra, 0($sp)
	addi $sp, $sp, 8
	jr $ra
