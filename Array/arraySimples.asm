.data
	
.asciiz 
	str1: "Digite um valor(Menor que 0 pra sair): "
	str2: "Conclu�do"
	num: .word 0 #Uma palavra de 32 bits

.text
la $s1, num #s1 � o registrador que aponta para a vari�vel num

	_loop:
	li $v0, 4 
	la $a0, str1
	syscall
	
	li $v0, 5 #Chama a entrada de dados
	syscall
	
	bltz $v0, _fim
	sw $v0, ($s1) #armazena o endere�o de v0 dentro de s1
	la $s1, 4($s1) #incrementa e sobrescreve o valor atual de s1 em 4 (padr�o de uma palavra para maquinas risc) criando assim um array
	j _loop
	
	_fim:
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 10
	syscall