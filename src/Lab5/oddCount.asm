# Exercício 5.1

.data
tab: .word 1 2 3 4 5 6 7 8 9 10

.text
main:
	la $a0, tab
	li $a1, 10
	jal oddnumber
	
	move $a0, $v0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
oddnumber:
	lw $s0, 0($a0)
	move $v0, $zero
	move $t1, $zero
	loop:
		bge $t1, $a1, end
		addi $t1, $t1, 1
		andi $t2, $s0, 1
		addi $a0, $a0, 4
		lw $s0, 0($a0)
		beq $t2, $zero, loop
		addi $v0, $v0, 1
		j loop
	end:	
	
	jr $ra