# Exercício 4.2

.text
main:
	li $a0, 1000
	li $a1, 80
	jal absDif
	
	move $a0, $v0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall

abs:
	bge $a0, $zero, endCondition
	mul $a0, $a0, -1
	endCondition:
	move $v0, $a0
	jr $ra
	
absDif:
	sub $a0, $a0, $a1
	move $s0, $ra
	jal abs
	move $ra, $s0
	jr $ra
	