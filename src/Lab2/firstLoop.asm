# Exercício 2.1

.data
nl: .byte '\n'

.text
li $t0, 1
li $t1, 20

cycle:
	move $a0, $t0
	jal printNum
	addi $t0, $t0, 1
	ble $t0, $t1, cycle

li $v0, 10
syscall

printNum:
li $v0, 1
syscall

li $v0, 4
la $a0, nl
syscall

jr $ra
