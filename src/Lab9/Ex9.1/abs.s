.text
    .globl valor_absoluto

valor_absoluto:
    # $a0 = valor de entrada
    # devolver |$a0| em $v0
    # (não chama outras funções, logo não precisa de guardar $ra)
    
	move $v0, $a0
	bge  $a0, $zero, salta
	sub  $v0, $zero, $v0
salta:
	
    jr   $ra

