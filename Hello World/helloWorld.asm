.data 				#indica que se trata de uma área de dados
str: .asciiz "Hello world" 	#label = variável

.text
li $v0, 4 
la $a0, str
syscall 			#chamada de sistema