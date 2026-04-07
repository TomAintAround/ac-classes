# Exercício 5.4

.data
askString: .asciiz "Introduza a sua frase: "
askKey: .asciiz "Introduza a sua chave: "
showEncrypted: .asciiz "Frase encriptada: "
showOriginal: .asciiz "Frase original: "
nl: .byte '\n'
string: .space 128
key: .space 1

.text
main:
	la $t0, askString
	la $t1, askKey
	la $s2, nl
	lb $t2, 0($s2)
	la $t3, showEncrypted
	la $t4, showOriginal
	
	li $v0, 4
	move $a0, $t0
	syscall
	
	li $v0, 8
	la $a0, string
	li $a1, 128
	syscall
	move $s0, $a0
	
	li $v0, 4
	la $a0, askKey
	syscall
	
	li $v0, 8
	la $a0, key
	syscall
	
	lb $a1, 0($a0)
	move $a0, $s0
	jal codificaString
	move $t5, $a0
	
	li $v0, 4
	move $a0, $t3
	syscall
	move $a0, $s0
	syscall
	
	jal codificaString
	move $s0, $a0
	
	li $v0, 4
	move $a0, $t4
	syscall
	move $a0, $s0
	syscall
	
	li $v0, 10
	syscall

codificaString:
	move $t5, $zero
	loop:
		lb $t6, 0($a0)
		beq $t6, $t2, loopEnd
		xor $t6, $t6, $a1
		sb $t6, 0($a0)
		addi $a0, $a0, 1
		addi $t5, $t5, 1
		j loop
	loopEnd:

	sub $a0, $a0, $t5
	jr $ra