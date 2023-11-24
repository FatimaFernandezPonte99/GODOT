extends KinematicBody2D


# Declare member variables here. Examples:
#LOS VALORES DE ESTAS A LO MEJOR HAY QUE CAMBIARLOS
var gravedad = 10 
var speed = 30
var suelo = Vector2(0,-1)
var velocidad = Vector2()
#Esto no sé si es así
var direccion = 1

var is_dead = false



# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func dead():
	is_dead = true
	velocidad = Vector2(0,0)
	$AnimatedSprite.animation = "Dead"
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#A lo mejor NO hay que meter todo dentro de esta if
	if is_dead == false:
		velocidad.x = speed * direccion
	
		if direccion == 1:
			$AnimatedSprite.flip_h = false
		else:
			$AnimatedSprite.flip_h = true
	
		if is_on_wall():
			direccion = direccion*-1
			velocidad.x = speed * direccion
		
		$AnimatedSprite.play("Run")
		velocidad.y += gravedad
		velocidad = move_and_slide(velocidad,suelo)
	
