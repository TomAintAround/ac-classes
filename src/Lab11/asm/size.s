	.file	1 "bin_img_c.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.text
	.align	2
	.globl	bin_img_c
	.set	nomips16
	.ent	bin_img_c
	.type	bin_img_c, @function
bin_img_c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	mult	$6,$5
	move	$2,$0
	mflo	$5
	b	$L2
	move	$3,$0

$L3:
	lbu	$6,0($7)
	addiu	$3,$3,1
	addu	$2,$2,$6
$L2:
	slt	$6,$3,$5
	bne	$6,$0,$L3
	addu	$7,$4,$3

	bne	$5,$0,1f
	div	$0,$2,$5
	break	7
1:
	mflo	$7
	b	$L4
	move	$3,$0

$L7:
	lbu	$2,0($4)
	nop
	slt	$2,$2,$7
	bne	$2,$0,$L6
	move	$6,$0

	li	$6,255			# 0xff
$L6:
	sb	$6,0($4)
	addiu	$4,$4,1
$L4:
	slt	$2,$3,$5
	bne	$2,$0,$L7
	addiu	$3,$3,1

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bin_img_c
	.size	bin_img_c, .-bin_img_c
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
