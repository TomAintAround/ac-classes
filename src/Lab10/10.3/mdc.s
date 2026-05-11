.text

.globl mdc

mdc:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	ble $a1, $zero, specialCase

	div $a0, $a1
	mfhi $t0
	move $a0, $a1
	move $a1, $t0
	jal mdc

	j end
	
specialCase:
	move $v0, $a0

end:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
