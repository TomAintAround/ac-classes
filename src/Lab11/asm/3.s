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
	mflo	$5
	blez	$5,$L11
	move	$2,$0

	move	$3,$0
$L3:
	addu	$6,$4,$3
	lbu	$6,0($6)
	addiu	$3,$3,1
	bne	$3,$5,$L3
	addu	$2,$2,$6

	bne	$5,$0,1f
	div	$0,$2,$5
	break	7
1:
	move	$3,$0
	mflo	$7
$L6:
	lbu	$6,0($4)
	addiu	$3,$3,1
	slt	$6,$6,$7
	xori	$6,$6,0x1
	subu	$6,$0,$6
	sb	$6,0($4)
	bne	$3,$5,$L6
	addiu	$4,$4,1

$L11:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bin_img_c
	.size	bin_img_c, .-bin_img_c
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
