extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#Tienes que ponerla como escena principal desde el res
func _on_Button_pressed():
	print("Botón")
	#Cambiamos al primer nivel
	get_tree().change_scene("res://Level.tscn")


func _on_Salir_pressed():
	get_tree().quit()

