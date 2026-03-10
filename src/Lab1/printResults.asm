# Exercício 1.7
.data
x: .word 1
y: .word 2
z: .word 3
msgX: .asciiz "Valor 1: "
msgY: .asciiz "Valor 2: "
msgZ: .asciiz "Valor 3: "
result: .asciiz "Resultado: "
newLine: .byte '\n'

.text
.globl main

main:
	la $t0, x
	lw $t1, 0($t0)
	la $t2, y
	lw $t3, 0($t2)
	la $t4, z
	lw $t5, 0($t4)

	add $t6, $t1, $t3
	add $t6, $t6, $t5

	la $a0, msgX
	move $a1, $t1
	jal print
	
	la $a0, msgY
	move $a1, $t3
	jal print
	
	la $a0, msgZ
	move $a1, $t5
	jal print
	
	la $a0, result
	move $a1, $t6
	jal print
	
	li $v0, 10
	syscall

print:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	li $v0, 4
    syscall
    
    li $v0, 1
    move $a0, $a1
    syscall
    
    li $v0, 4
    la $a0, newLine
    syscall
    
    lw $ra, 0($sp)
    addi, $sp, $sp, 4
    jr $ra
