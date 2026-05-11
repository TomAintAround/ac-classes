.text
.globl potencia

potencia:
	addi $sp, $sp, -8
	sw $a1, 4($sp)
	sw $ra, 0($sp)

	ble $a1, $zero, specialCase

	addi $a1, $a1, -1
	jal potencia
	lw $a1, 4($sp)
	mul $v0, $v0, $a0

	j end

specialCase:
	li $v0, 1

end:
	lw $ra, 0($sp)
	addi $sp, $sp, 8
	jr $ra
