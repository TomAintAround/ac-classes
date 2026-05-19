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
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	lw	$3,36($fp)
	lw	$2,40($fp)
	nop
	mult	$3,$2
	mflo	$2
	sw	$2,20($fp)
	sw	$0,16($fp)
	sw	$0,12($fp)
	b	$L2
	nop

$L3:
	lw	$2,12($fp)
	lw	$3,32($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	lw	$3,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
$L2:
	lw	$3,12($fp)
	lw	$2,20($fp)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L3
	nop

	lw	$3,16($fp)
	lw	$2,20($fp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2
	break	7
1:
	mfhi	$3
	mflo	$2
	sw	$2,16($fp)
	sw	$0,12($fp)
	b	$L4
	nop

$L7:
	lw	$2,12($fp)
	lw	$3,32($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lbu	$3,8($fp)
	lw	$2,16($fp)
	nop
	slt	$2,$3,$2
	beq	$2,$0,$L5
	nop

	sb	$0,8($fp)
	b	$L6
	nop

$L5:
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,8($fp)
$L6:
	lw	$2,12($fp)
	lw	$3,32($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
$L4:
	lw	$3,12($fp)
	lw	$2,20($fp)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L7
	nop

	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bin_img_c
	.size	bin_img_c, .-bin_img_c
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
