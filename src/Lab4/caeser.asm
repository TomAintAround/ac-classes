# Exercício 4.6

.data
msg: .asciiz "hello world!"
num: .word 3

.text
main:
	la $a0, msg
	la $t1, num
	lw $a1, 0($t1)
	jal caeser
	
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall

caeser:
	li $s0, 26
	move $s1, $zero
	li $s3, 97
	li $s4, 122
	msgLoop:
		lbu $s2, 0($a0)
		beq $s2, $zero, msgLoopEnd
		blt $s2, $s3, skipReplacement
		bgt $s2, $s4, skipReplacement
		sub $s2, $s2, $s3
		add $s2, $s2, $a1
		div $s2, $s0
		mfhi $s2
		add $s2, $s2, $s3
		sb $s2, 0($a0)
		skipReplacement:
		addi $a0, $a0, 1
		addi $s1, $s1, 1
		j msgLoop
	msgLoopEnd:
	
	sub $a0, $a0, $s1
	jr $ra
