# Exercício 3.1

.text
main:
	li $t0, 0xFFFF0011
	li $t1, 1
	move $t2, $zero
	li $t3, 7
loop:
	sb $t1, 0($t0)
	sll $t1, $t1, 1
	addi $t2, $t2, 1
	blt $t2, $t3, loop

	li $v0, 10
	syscall