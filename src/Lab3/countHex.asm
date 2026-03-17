# Exercício 3.3

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
display: .word 0xFFFF0010, 0xFFFF0011

.text
main:
	la $t0, digits
	la $t1, digits
	lb $s0, 0($t0)
	lb $s1, 0($t1)
	
	la $t2, display
	lw $s2, 0($t2)
	lw $s3, 4($t2)
	
	move $t4, $zero
	li $t5, 16
	loopMsb:
		move $t3, $zero
		sb $s0, 0($s2)
		addi $t0, $t0, 1
		addi $t3, $t3, 1
		lb $s0, 0($t0)
		sb $s1, 0($s3)
		addi $t1, $t1, 1
		addi $t4, $t4, 1
		lb $s1, 0($t1)
		loopLsb:
			sb $s0, 0($s2)
			addi $t0, $t0, 1
			lb $s0, 0($t0)
			addi $t3, $t3, 1
			blt $t3, $t5, loopLsb
		sub $t0, $t0, $t5
		lb $s0, 0($t0)
		blt $t4, $t5, loopMsb
	li $v0, 10
	syscall
	
