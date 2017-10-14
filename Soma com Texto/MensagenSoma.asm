.data #indica que deve se armazenar valores na memória
str: .asciiz "A soma dos valores é igual a " 	#label = variável, str: é o identificador da variável

.text # inicia as instruções
li $t0, 4 
li $t1, 4

sw $t0, 0x10010020 	# armazena o valor de $t0 dentro da posição 0x10010020 da memória RAM
sw $t1, 0x10010024	# armazena o valor de $t1 dentro da posição 0x10010024 da memória RAM

add $t1, $t0, $t1 	# 1 - $t1 local onde deve ser armazenado o valor da soma
			# 2 - $t0 primeiro membro da soma
			# 3 - $t1 segundo membro da soma

li $v0, 4 
la $a0, str		#
syscall 		#chamada de sistema

li $v0, 1
la $a0, ($t1)
syscall			#chamada de sistema