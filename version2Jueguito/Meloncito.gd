extends Area2D

signal meloncitoCollected


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("Idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Meloncito_body_entered(body):
	if body.get_name() == "KinematicBody2D":
		emit_signal("meloncitoCollected")
		queue_free()
