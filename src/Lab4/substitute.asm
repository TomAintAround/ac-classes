# Exercício 4.4

.data
msg: .asciiz "Eu nao sei o que e te ei de dar"
c1: .byte 'e'
c2: .byte 'z'
count: .word 0
nl: .byte '\n'

.text
main:
	la $a0, msg
	la $t1, c1
	lb $a1, 0($t1)
	la $t2, c2
	lb $a2, 0($t2)
	la $a3, count
	jal subs
	sw $v0, 0($a3)
	move $t0, $v0
	
	li $v0, 4
	syscall
	la $a0, nl
	syscall

	move $a0, $t0
	li $v0, 1
	syscall

	li $v0, 10
	syscall

subs:
	move $v0, $zero
	move $s1, $zero
	readMsg:
	lbu $s0, 0($a0)
	bne $a1, $s0, substituteEnd
	sb $a2, 0($a0)
	addi $v0, $v0, 1
	substituteEnd:
	beq $s0, $zero, readMsgEnd
	addi $a0, $a0, 1
	addi $s1, $s1, 1
	j readMsg
	readMsgEnd:
	sub $a0, $a0, $s1
	jr $ra