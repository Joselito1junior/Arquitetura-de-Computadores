.data
.asciiz
	Frase: "\nEscolha uma Opção \n1.Cadastrar \n2.Consultar \n3.Sair\n"
	Esc1: "Voce escolheu 1: \n"
	Esc2: "Voce escolheu 2: \n"
	Esc3: "Sair\n"
.text
	_Menu:
	li $v0, 4
	la $a0, Frase
	syscall
	
	li $v0, 5
	syscall
	
	beq $v0, 1, _Cadastrar
	beq $v0, 2, _Consultar
	beq $v0, 3, _Sair
	
			
	_Cadastrar:
	li $v0, 4
	la $a0, Esc1
	syscall
	j _Menu
	
	
	_Consultar:
	li $v0, 4
	la $a0, Esc2
	syscall
	j _Menu
		
	_Sair:
	li $v0, 10
	syscall
	j _Menu
	
	
