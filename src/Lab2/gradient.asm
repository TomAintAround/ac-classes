# Exercício 2.4

.text
main:
	li $t0, 0x10010000
	
	li $t1, 64
	li $t2, 32
	move $t3, $zero
	move $t4, $zero
	move $t5, $zero
	lines:
		columns:
			sw $t5, 0($t0)
			addi $t5, $t5, 1024
			addi $t0, $t0, 4
			addi $t3, $t3, 1
			blt $t3, $t1, columns
		move $t3, $zero
		addi $t5, $t5, 262144
		addi $t4, $t4, 1
		blt $t4, $t2, lines
	
	li $v0, 10
	syscall