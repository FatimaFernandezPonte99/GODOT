extends StaticBody2D


# Declare member variables here. Examples:
var velocidad = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.playing = true


func _process(delta):
	global_position.x += velocidad * delta
	


func _on_VisibilityEnabler2D_screen_exited():
	queue_free()
