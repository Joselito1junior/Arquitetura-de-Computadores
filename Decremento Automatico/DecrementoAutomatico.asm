.text
	_start:
	li $t0, 10
	
	_loop:
	sub $t0, $t0, 1
	bne  $t0, 0, _loop
	
	li $v0, 10 #Syscall 10 indica que o programa finalizou
	syscall
	
	
## Código do professor ##

#.text

#_start
	#li $t0, 10

#_initial:
	#li $t0, 0, _decr
	#j _done
	
#_decr:
	#sub $t0, $t0, 1
	#j _initial
	
#_done:
	#li $v0, 10
	#syscall