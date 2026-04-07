# Exercício 5.3

.data
string: .asciiz "Never gonna give you up!\nNever gonna let you down!"

.text
main:
	la $a0, string
	jal upperString
	li $v0, 4
	syscall

	li $v0, 10
	syscall

upperString:
	move $t0, $zero
	li $t2, 0x61
	li $t3, 0x7A
	andi $a0, $a0, -1
	loop:
		addi $a0, $a0, 1
		addi $t0, $t0, 1
		lb $t1, 0($a0)
		beq $t1, $zero, loopEnd
		blt $t1, $t2, loop
		bgt $t1, $t3, loop
		xor $t1, $t1, 32  # ...00100000
		sb $t1, 0($a0)
		j loop
	loopEnd:
	
	sub $a0, $a0, $t0
	jr $ra