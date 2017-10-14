#(x + 5 - y) * 35 / 2

.text
la $t0, 5
la $t1, 8

add $t2, $t0, 5
sub $t2, $t2, $t1
mul $t2, $t2, 35
div $t2, $t2, 2

li $v0, 1
la $a0, ($t2)
syscall
