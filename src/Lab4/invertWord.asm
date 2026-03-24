# Exercício 4.3

.text
main:
	li $a0, 0x12345678
	jal invert
	move $a0, $v0
	
	li $v0, 34
	syscall
	
	li $v0, 10
	syscall

invert:
	move $v0, $zero
	
	andi $t0, $a0, 0xFF
	sll $t0, $t0, 24
	or $v0, $v0, $t0
	
	andi $t0, $a0, 0xFF00
	sll $t0, $t0, 8
	or $v0, $v0, $t0
	
	andi $t0, $a0, 0xFF0000
	srl $t0, $t0, 8
	or $v0, $v0, $t0
	
	andi $t0, $a0, 0xFF000000
	srl $t0, $t0, 24
	or $v0, $v0, $t0
	
	jr $ra