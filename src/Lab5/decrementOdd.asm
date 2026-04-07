# Exercício 5.2

.data
tab: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
nl: .byte '\n'

.text
main:
	la $s1, nl
	la $a0, tab
	li $a1, 10
	jal oddnumber
	
	move $t4, $a0
	move $t1, $zero
	printTable:
		bge $t1, $a1, printTableEnd
		
		lw $s0, 0($t4)
		move $a0, $s0
		li $v0, 1
		syscall
		
		move $a0, $s1
		li $v0, 4
		syscall
		
		addi $t4, $t4, 4
		addi $t1, $t1, 1
		j printTable
	printTableEnd:
	
	li $v0, 10
	syscall
	
oddnumber:
	lw $s0, 0($a0)
	move $v0, $zero
	move $t1, $zero
	move $t3, $zero
	loop:
		bge $t1, $a1, loopEnd
		addi $t1, $t1, 1
		andi $t2, $s0, 1
		beq $t2, $zero, condEnd
		addi $v0, $v0, 1
		andi $s0, $s0, -2  # ...11111110
		sw $s0, 0($a0)
		condEnd:
		addi $t3, $t3, 4
		addi $a0, $a0, 4
		lw $s0, 0($a0)
		j loop
	loopEnd:
	
	sub $a0, $a0, $t3
	jr $ra
