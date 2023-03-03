extends Node2D

# A "var teste = false" não tem utilidade aqui
# A "var valor" não tem utilidade aqui
var numero = 0 # a variavel numero estava acentuada
var lista = [] 
var nome = str('') # a variavel nome foi declarada 

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) # o argumento LineEdit estava sem o simbolo $
	nome = $LineEdit.text # a ordem estava invertida, nome deve vir primeiro 

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10): 
		numero+=i # a variavel numero estava com "n" maiusculo
		lista.append(numero) # a variavel numero estava com "n" maiusculo
	$Label.text = str(lista) # o print é com a variavel lista

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont=0 # as variaveis cont e i foram colocadas antes do while para evitar um looping
	var i=0
	
	while(i < len(lista)): #a indentação da condicional foi corrigida para não haver loop
		if(lista[i]%2==1):
			cont+=1
		i += 1 #para frear o loop é necessario incrementar a variavel i 
	if(cont!=0): # quando cont for diferente de 0, existirão impares na lista
		nome = nome+"baldo"
	$Label2.text = nome
	
