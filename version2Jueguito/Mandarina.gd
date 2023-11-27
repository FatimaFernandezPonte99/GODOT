extends Area2D

signal mandarinaCollected

# Declare member variables here. Examples:
#var mandarinas_conseguidas = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("Idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Mandarina_body_entered(body):
	if body.get_name() == "KinematicBody2D":
		emit_signal("mandarinaCollected")
		queue_free()
	
	#mandarinas_conseguidas += 1
	#print(mandarinas_conseguidas)
	#queue_free()



	
