# Exercício 2.3

.data
dsp: .word 0x10010000

.text
la $t0, dsp
lw $s0, 0($t0)

li $s1, 0x000000FF
li $s2, 0x00FF00FF

li $s3, 64
li $s4, 32

move $t1, $zero
move $t2, $zero, 
paintBlueLines:
	paintBlueColumns:
		move $a0, $s1
		jal paint
		blt $t1, $s3, paintBlueColumns
	move $t1, $zero
	addi $t2, $t2, 1
	blt $t2, $s4, paintBlueLines

li $s0, 0x10010000
move $t1, $zero
move $t2, $zero
li $t3, 8
mul $t4, $t3, 4
mul $s5, $s3, 4
sub $s6, $s5, $t4
div $t5, $t3, 2
div $t6, $s4, 2
sub $t6, $t6, $t5
mul $t7, $t5, 4
div $t8, $s5, 2
sub $t8, $t8, $t7
movePointer:
	add $s0, $s0, $s5
	addi $t1, $t1, 1
	blt $t1, $t6, movePointer
add $s0, $s0, $t8

move $t1, $zero
paintSquareLines:
	paintSquareColumns:
		move $a0, $s2
		jal paint
		blt $t1, $t3, paintSquareColumns
	move $t1, $zero
	addi $t2, $t2, 1
	add $s0, $s0, $s6
	blt $t2, $t3, paintSquareLines

li $v0, 10
syscall

paint:
	sw $a0, 0($s0)
	addi $s0, $s0, 4
	addi $t1, $t1, 1
	jr $ra
