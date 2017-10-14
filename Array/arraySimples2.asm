.data
	str1: .word 0 #cria uma variável do tipo word e armazena nela o valor 0
	
.text

	la $s0, str1
	li $t0, 4
	li $t1, 6
	li $t2, 8
	li $t3, 10
	
	sw $t0, ($s0) #Armazena o valor de t0 dentro de s0
	sw $t1, 4($s0) #Armazena o valor de t0 dentro de s0 + 4
	sw $t2, 8($s0) #Armazena o valor de t0 dentro de s0 + 8
	sw $t3, 12($s0) #Armazena o valor de t0 dentro de s0 + 12