    .text
    .globl distancia

distancia:
    # guardar $ra e registos $s que vai usar
    # calcular x1 - x2, chamar valor_absoluto
    # guardar o resultado
    # calcular y1 - y2, chamar valor_absoluto
    # somar os dois resultados, colocar em $v0
    # restaurar registos e regressar
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    sub $a0, $a0, $a2
    jal valor_absoluto
    move $s0, $v0

    sub $a0, $a1, $a3
    jal valor_absoluto
    move $s1, $v0

    add $v0, $s0, $s1
	
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr   $ra
