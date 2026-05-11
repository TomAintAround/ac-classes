.text
.globl procura

procura:
	addi $sp, $sp, -16

	bgt $a1, $a2, notFound

	add $t0, $a1, $a2
	srl $t0, $t0, 1
	sll $t0, $t0, 2

	sw $a0, 4($sp)
	add $a0, $a0, $t0
	srl $t0, $t0, 2
	lw $t1, 0($a0)
	lw $a0, 4($sp)

	beq $t1, $a3, found
	blt $t1, $a3, less
	bgt $t1, $a3, greater

	j end

notFound:
	li $v0, -1
	
	j end

found:
	move $v0, $t0

	j end

less:
	sw $a1, 8($sp)
	sw $ra, 0($sp)

	move $a1, $t0
	addi $a1, $a1, 1
	jal procura

	lw $a1, 8($sp)
	lw $ra, 0($sp)

	j end

greater:
	sw $a2, 12($sp)
	sw $ra, 0($sp)

	move $a2, $t0
	addi $a2, $a2, -1
	jal procura

	lw $a2, 12($sp)
	lw $ra, 0($sp)
	
end:
	addi $sp, $sp, 16
	jr $ra
