# Exercício 1.5
.data
x: .word 1
y: .word 2
z: .word 3
sum: .word

.text
la $t0, x
lw $t1, 0($t0)
la $t2, y
lw $t3, 0($t2)
la $t4, z
lw $t5, 0($t4)

add $v0, $t1, $t3
add $v0, $v0, $t5
sw $v0, sum