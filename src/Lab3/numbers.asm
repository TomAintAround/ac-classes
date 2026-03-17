# Exercício 3.2

.data
digits: .byte
	0x3F, # 0
	0x06, # 1
	0x5B, # 2
	0x4F, # 3
	0x66, # 4
	0x6D, # 5
	0x7D, # 6
	0x07, # 7
	0x7F, # 8
	0x6F, # 9
	0x77, # A
	0x7C, # B
	0x39, # C
	0x5E, # D
	0x79, # E
	0x71, # F

.text
main:
	la $t0, digits
	lb $s0, 0($t0)
	li $t1, 0xFFFF0011
	move $t2, $zero
	li $t3, 16
	loop:
		sb $s0, 0($t1)
		addi $t0, $t0, 1
		lb $s0, 0($t0)
		addi $t2, $t2, 1
		blt $t2, $t3, loop
	li $v0, 10
	syscall

	
