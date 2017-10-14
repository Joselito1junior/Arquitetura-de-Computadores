.data #indica que deve se armazenar valores na memória
.word
Num1: 0
Num2: 0

.asciiz 
v1: "Digite o 1o. Valor "
v2: "Digite o 2o. Valor "
tot: "O total eh "

.text 
li $v0, 4
la $a0, v1
syscall

li $v0, 5 #Recebe um valor inteiro e armazena em v0
syscall
sw $v0, Num1

.text 
li $v0, 4
la $a0, v2
syscall

li $v0, 5 #Recebe um valor inteiro e armazena em v0
syscall
sw $v0, Num2

li $v0, 4
la $a0, tot
syscall

lw $t0, Num1
lw $t1, Num2

add $t0, $t0, $t1
li $v0, 1
la $a0, ($t0)
syscall

