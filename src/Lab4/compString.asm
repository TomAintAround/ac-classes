# Exercício 4.1

.data
str: .asciiz "Que bela vida!!! Tenho sono!!!"
len: .word 0

.text
main:
	la $t0, str
	la $t1, len
	li $s1, 0
	
	readString:
		lbu $s0, 0($t0)
		beq $s0, $zero, readStringEnd
		addi $s1, $s1, 1
		addi $t0, $t0, 1
		j readString
	readStringEnd:
	
	li $v0, 1,
	sub $t0, $t0, $s1
	sw $s1, 0($t1)
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall
	