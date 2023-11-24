extends Area2D


export var Speed = 200
var velocity = Vector2()
var dir_proy = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

#Para matar a los enemigos
func _on_Proyectil_body_entered(body):
	if "Enemigo1" in body.name:
		body.dead()
		queue_free()

func set_direccion_proyectil(dir):
	dir_proy = dir
	if dir == -1:
		$AnimatedSprite.flip_h = true

# Called every frame. ‘delta’ is the elapsed time since the previous frame.
func _process(delta):
	velocity.x = Speed * delta
	velocity.x = Speed * delta * dir_proy
	translate(velocity)
	$AnimatedSprite.play("disparo")

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
