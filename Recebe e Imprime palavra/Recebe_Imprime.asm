.data
_str1: .word 20
_frase: .asciiz "Digite uma palavra: "
_final: .asciiz "\nPalavra digitada foi: "

.text
li $v0, 4 	# v0 recebe o valor que indica a proxima a��o que ser� realizada pelo syscall
la $a0, _frase	# a0 recebe o endere�o em que se encontra a frase a ser exibida
syscall

li $v0, 8	# v0 recebe o valor que indica a proxima a��o que ser� realizada pelo syscall 
la $a0, _str1	# a0 recebe o endere�o da vari�vel que ir� armazenar a string enviada pelo usu�rio
li $a1, 20	# a1 indica o valor m�ximo de caracteres que ser�o recebidos
syscall

li $v0, 4	# v0 recebe o valor que indica a proxima a��o que ser� realizada pelo syscall 
la $a0, _final	# a0 recebe o endere�o em que se encontra a frase a ser exibida
syscall

li $v0, 4	# v0 recebe o valor que indica a proxima a��o que ser� realizada pelo syscall 
la $a0, _str1	# a0 recebe o endere�o em que se encontra a frase a ser exibida
syscall
