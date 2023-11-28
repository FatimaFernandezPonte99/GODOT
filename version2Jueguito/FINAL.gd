extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("Idle")
	$AnimatedSprite2.play("Idle")
	$AnimatedSprite3.play("Idle")
	$AnimatedSprite4.play("Idle")
	$Final.playing = true
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
