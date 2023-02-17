extends Node2D

var nome
var idade
var conteudo
var mylista

func _ready():
	pass # Replace with function body.


func _process(_delta):
	nome = str($nome.text)
	idade = str($idade.text)
	conteudo = str($conteudo.text)
	var lista = []
	
	lista.append(conteudo)
	
	$ColorRect/Resposta1.text = 'Meu nome é ' + String(nome)+ ', tenho '  + String(idade) + 'anos ' + 'e trago ' +String(lista)
	
	mylista = ['Mochila', 'Notebook', 'Garrafa']
	$ColorRect2/Resposta2.text = "Bem vindo ao forms do Inteli, nele você precisará preencher algumas informações sobre você e seus materiais. As minhas são as seguintes: me chamo Keylla, tenho 18 anos, trago minha " + String(mylista) + " para o inteli. Agora é sua vez, preencha ao lado com suas informações"
	
