.text
li $v0, 4 
li $v1, 8
add $v1, $v0, $v1

li $v0, 1
la $a0, ($v1)
syscall 
