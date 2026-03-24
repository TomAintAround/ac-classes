# Exercício 4.5

.data
value: .word 19
result: .word 0

.text
main:
	la $t0, value
	lw $a0, 0($t0)
	la $t1, result
	jal countBits
	sw $v0, 0($t1)
	
	move $a0, $v0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
countBits:
	move $s0, $zero
	li $s1, 32
	move $s2, $zero
	andi $s3, $a0, 1
	beq $s3, $zero, loop
	addi $s2, $s2, 1
	loop:
		srl $a0, $a0, 1
		andi $s3, $a0, 1
		beq $s3, $zero, check1End
		addi $s2, $s2, 1
		check1End:
		addi $s0, $s0, 1
		blt $s0, $s1, loop
	
	andi $v0, $s2, 1
	jr $ra