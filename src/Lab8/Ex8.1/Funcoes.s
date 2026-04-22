	.data
	
	.text
	.globl	max
	.globl	min
	
max:
	move $v0, $a0
	bge $v0, $a1, end1
	move $v0, $a1
	end1:
	bge $v0, $a2, end2
	move $v0, $a2
	end2:
	bge $v0, $a3, end3
	move $v0, $a3
	end3:

	jr	$ra

min:
	move $v0, $a0
	ble $v0, $a1, end4
	move $v0, $a1
	end4:
	ble $v0, $a2, end5
	move $v0, $a2
	end5:
	ble $v0, $a3, end6
	move $v0, $a3
	end6:

	jr	$ra
