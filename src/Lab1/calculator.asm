# Exercício 1.8
.data
msg1: .asciiz "Introduza o 1o numero: "
msg2: .asciiz "Introduza o 2o numero: "
msgSum: .asciiz "Soma: "
msgSub: .asciiz "Diferenca: "
nl: .byte '\n'

.text
.globl main

main:
	la $a0 msg1
	jal askNum
	move $t0, $v0
	
	la $a0 msg2
	jal askNum
	move $t1, $v0
	
	la $a0, msgSum
	add $a1, $t0, $t1
	jal printNum
	
	la $a0, msgSub
	sub $a1, $t0, $t1
	jal printNum

	li $v0, 10
	syscall

printText: 
	li $v0, 4
	syscall
	jr $ra
	
askNum:
	addi $sp, $sp, -4
    sw $ra, 0($sp)

	jal printText
	
	li $v0, 5
	syscall
	
	lw $ra, 0($sp)
    addi $sp, $sp, 4
	
	jr $ra

printNum:
	addi $sp, $sp, -4
    sw $ra, 0($sp)

	jal printText
	
	li $v0, 1
	move $a0, $a1
	syscall
	
	li $v0, 4
	la $a0, nl
	syscall
	
	lw $ra, 0($sp)
    addi $sp, $sp, 4
	
	jr $ra