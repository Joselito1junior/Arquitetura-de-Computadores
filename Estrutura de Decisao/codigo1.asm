.data

.word
	num1: 0
	num2: 0
.asciiz
	str1: "\nDigite o valor 1: "
	str2: "\nDigite o valor 2: "
	str3: "\nTotal maior que 10."
	str4: "\nTotal menor que 10."
	str5: "\nTotal igual a 10."
	str6: "\nConcluido."
.text
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 5
	syscall
	
	sw $v0, num1
	
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 5
	syscall
	
	sw $v0, num2
	lw $t0, num1
	
	#lw $t0 , num1 #traz da memória o valor num1 e armazena em t0
	#lw $t1, num2 #traz da memória o valor num2 e armazena em t1
	
	add $t0, $t0, $t1
	
	#compara
	bgt $t0, 10, SeMaior #Desvie se o valor for maior que 
	blt $t0, 10, SeIgual #Desvie se o valor for igual que
	beq $t0, 10, SeMenor #Desvie se o valor for menor que
	
	SeMaior:
		li $v0, 4
		la $a0, str3
		syscall
		
		li $v0, 4
		la $a0, str6
		syscall
		
		li $v0, 10 #Syscall 10 indica que o programa finalizou
		syscall
		
	SeMenor:
		li $v0, 4
		la $a0, str4
		syscall
		
		li $v0, 4
		la $a0, str6
		syscall
		
		li $v0, 10 #Syscall 10 indica que o programa finalizou
		syscall
		
	SeIgual:
		li $v0, 4
		la $a0, str5
		syscall
		
		li $v0, 4
		la $a0, str6
		syscall
		
		li $v0, 10 #Syscall 10 indica que o programa finalizou
		syscall