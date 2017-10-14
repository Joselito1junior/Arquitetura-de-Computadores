.data
_str1: .word 20
_frase: .asciiz "Digite uma palavra: "
_final: .asciiz "\nPalavra digitada foi: "

.text
li $v0, 4 	# v0 recebe o valor que indica a proxima ação que será realizada pelo syscall
la $a0, _frase	# a0 recebe o endereço em que se encontra a frase a ser exibida
syscall

li $v0, 8	# v0 recebe o valor que indica a proxima ação que será realizada pelo syscall 
la $a0, _str1	# a0 recebe o endereço da variável que irá armazenar a string enviada pelo usuário
li $a1, 20	# a1 indica o valor máximo de caracteres que serão recebidos
syscall

li $v0, 4	# v0 recebe o valor que indica a proxima ação que será realizada pelo syscall 
la $a0, _final	# a0 recebe o endereço em que se encontra a frase a ser exibida
syscall

li $v0, 4	# v0 recebe o valor que indica a proxima ação que será realizada pelo syscall 
la $a0, _str1	# a0 recebe o endereço em que se encontra a frase a ser exibida
syscall
