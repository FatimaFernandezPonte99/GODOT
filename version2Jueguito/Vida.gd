
extends Area2D

signal vidaCollected

# Declare member variables here. Examples:

# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("Vidita")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Vida_body_entered(body):
	if body.get_name() == "KinematicBody2D":
		emit_signal("vidaCollected")
		queue_free()
	#FALTA QUE TE QUITEN VIDAS LOS ENEMIGOS

