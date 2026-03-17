# Exercício 3.5
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
	li $t1, 0xFFFF0010
	li $t2, 0xFFFF0012
	li $t3, 0xFFFF0014
	li $t7, 0xFFFF0011
	
	li $t4, 1
	li $t5, 8
	checkLoop:
		lb $s1, 0($t3)
		bne $s1, $zero, checkEnd
		sll $t4, $t4, 1
		sb $t4, 0($t2)
		ble $t4, $t5, checkLoop
		srl $t4, $t4, 4
		sb $t4, 0($t2)
		j checkLoop
	checkEnd:

	andi $t6, $s1, 0x0F
	andi $t7, $s1, 0xF0
	srl $t7, $t7, 4
	move $s1, $zero
	write1Loop:
		beq $t7, 1, write2Loop
		addi $s1, $s1, 1
		srl $t7, $t7, 1
		j write1Loop
	write2Loop:
		beq $t6, 1, write2End
		addi $s1, $s1, 4
		srl $t6, $t6, 1
		j write2Loop
	write2End:
	add $t0, $t0, $s1
	lb $s0, 0($t0)
	sb $s0, 0($t1)
	
	li $v0, 10
	syscall