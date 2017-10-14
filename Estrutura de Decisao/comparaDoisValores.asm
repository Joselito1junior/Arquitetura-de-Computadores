.data

.word
	num1: 0
	num2: 0
.asciiz
	str1: "\nDigite o valor 1: "
	str2: "\nDigite o valor 2: "
	str3: "\nValores iguais."
	str4: "\nValores diferentes."
	str5: "\nConcluido."
.text
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 5
	syscall
	
	sw $v0, num1  #armazena o valo 1 na memoria
	
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 5
	syscall
	
	sw $v0, num2 #armazena o valo 1 na memoria
	
	lw $t0, num1 #traz da memória o valor num1 e armazena em t0
	lw $t1, num2 #traz da memória o valor num1 e armazena em t0
	
	#compara
	beq $t0, $t1, SeIgual #Desvie se o valor for igual 
	bne $t0, $t1, SeDiferente #Desvie se o valor for diferente 
	
	SeDiferente:
		li $v0, 4
		la $a0, str4
		syscall
		
		li $v0, 4
		la $a0, str5
		syscall
		
		li $v0, 10 #Syscall 10 indica que o programa finalizou
		syscall
		
	SeIgual:
		li $v0, 4
		la $a0, str3
		syscall
		
		li $v0, 4
		la $a0, str5
		syscall
		
		li $v0, 10 #Syscall 10 indica que o programa finalizou
		syscall