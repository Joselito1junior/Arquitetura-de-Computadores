.data 				#indica que se trata de uma �rea de dados
str: .asciiz "Hello world" 	#label = vari�vel

.text
li $v0, 4 
la $a0, str
syscall 			#chamada de sistema