extends Node2D

func _ready():
	pass

func _process(delta):
	$Icon.move_local_x(2)
	$Icon.move_local_y(0)
