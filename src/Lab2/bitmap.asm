# Exercício 2.2

.data
dsp: .word 0x10010000
yellow: .word 0x00FFFF00

.text
la $t0, dsp
lw $s0, 0($t0)

la $t1, yellow
lw $s1, 0($t1)

li $t2, 30
li $t3, 20

li $s2, 64
sub $t4, $s2, $t2
mul $t4, $t4, 4

move $t5, $zero
move $t6, $zero
cycleLines:
	cycleColumns:
		sw $s1, 0($s0)
		addi $s0, $s0, 4
		addi $t5, $t5, 1
		blt $t5, $t2, cycleColumns
	move $t5, $zero
	add $s0, $s0, $t4
	addi $t6, $t6, 1
	blt $t6, $t3, cycleLines

li $v0, 10
syscall
