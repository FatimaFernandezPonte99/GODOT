extends KinematicBody2D


# Declare member variables here. Examples:
#LOS VALORES DE ESTAS A LO MEJOR HAY QUE CAMBIARLOS
var gravedad = 10 
var speed = 30
var suelo = Vector2(0,-1)
var velocidad = Vector2()
var direccion = -1

var is_dead = false



# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func dead():
	is_dead = true
	velocidad = Vector2(0,0)
	$AnimatedSprite.play("Dead")
	$CollisionShape2D.set_deferred("disabled",true)
	$Timer.start()


func _process(delta):
	if is_dead == false:
		velocidad.x = speed * direccion
	
		if direccion == 1:
			$AnimatedSprite.flip_h = false
		else:
			$AnimatedSprite.flip_h = true
	
		if is_on_wall():
			direccion = direccion*-1
			$RayCast2D.position.x*=-1
			velocidad.x = speed * direccion
		
		
			if $RayCast2D.is_colliding() == true:
				direccion = direccion*-1
				$RayCast2D.position.x*=-1
				velocidad.x = speed * direccion
	
		$AnimatedSprite.play("Run")
		velocidad.y += gravedad
		velocidad = move_and_slide(velocidad,suelo)


func _on_Timer_timeout():
	queue_free()
	



func _on_Area2D_body_entered(body):
	if body.get_name() == "KinematicBody2D":
		body._loseLife(position.x)
		pass
		
