extends Node2D

var velocidadeFoguete = 0 # velocidade inicial do foguete preto
var velocidadeFoguete2 = 0 # velocidade inicial do foguete branco

func _ready():
	$Foguete.visible = false
	$Foguete2.visible = false
	velocidadeFoguete = 0
	velocidadeFoguete2 = 0

func _process(_delta):
	$Foguete.move_local_y(velocidadeFoguete)
	$Foguete2.move_local_y(velocidadeFoguete2)
	
	if abs($Foguete.position.y - $Parede.position.y) < 20:
		velocidadeFoguete = 0
		$Label.text = "BOOOM"
		
	if abs($Foguete2.position.y - $Parede.position.y) < 20:
		velocidadeFoguete2 = 0
		$Label2.text = "BUUUM"

func _on_Button_pressed():
	$Foguete.visible = true
	$Foguete2.visible = true
	velocidadeFoguete = -5
	velocidadeFoguete2 = -5

func _on_Area2D_body_entered(_body):
	velocidadeFoguete2 = 0
	velocidadeFoguete = 0
	$Label2.text = "BUUUM"
	get_tree().change_scene("res://scenes/Final.tscn")
