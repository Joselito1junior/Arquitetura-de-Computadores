.data #indica que deve se armazenar valores na mem�ria
str: .asciiz "A soma dos valores � igual a " 	#label = vari�vel, str: � o identificador da vari�vel

.text # inicia as instru��es
li $t0, 4 
li $t1, 4

sw $t0, 0x10010020 	# armazena o valor de $t0 dentro da posi��o 0x10010020 da mem�ria RAM
sw $t1, 0x10010024	# armazena o valor de $t1 dentro da posi��o 0x10010024 da mem�ria RAM

add $t1, $t0, $t1 	# 1 - $t1 local onde deve ser armazenado o valor da soma
			# 2 - $t0 primeiro membro da soma
			# 3 - $t1 segundo membro da soma

li $v0, 4 
la $a0, str		#
syscall 		#chamada de sistema

li $v0, 1
la $a0, ($t1)
syscall			#chamada de sistema