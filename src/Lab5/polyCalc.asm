# Exercício 5.5

.data
tab: .word 10 24 32 40 64 128

.text
main:
	la $a0, tab
	li $a1, 6
	jal polyCalc
	
	move $a0, $v0
	li $v0, 1
	syscall

	li $v0, 10
	syscall

polyCalc:
	move $v0, $zero
	move $s1, $zero
	loop:
		bge $s1, $a1, loopEnd
		lw $s0, 0($a0)
		srlv $s0, $s0, $s1
		add $v0, $v0, $s0
		addi $a0, $a0, 4
		addi $s1, $s1, 1
		j loop
	loopEnd:
	
	jr $ra