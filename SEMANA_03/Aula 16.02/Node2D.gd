extends Node2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	$Icon
	$Icon01.move_local_x(5)
	if $Icon01.position.x > 500:
		get_tree().change_scene("res://Cena02.tscn"
