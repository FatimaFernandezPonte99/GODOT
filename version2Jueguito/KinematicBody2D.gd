extends KinematicBody2D

export (PackedScene) var ice

const acceleration = 70
const max_speed = 150
const PROYECTIL = preload("res://Proyectil.tscn")

var speed = 10
var jump_speed = 620
var gravity = 40

var velocity = Vector2.ZERO

func _ready():
	$AnimatedSprite.playing = true

func _physics_process(_delta):
	move()
	jump()
	velocity = move_and_slide(velocity, Vector2(0,-1))

func move():
	velocity.y += gravity
	
	if Input.is_action_just_pressed("shoot"):
		#FALTA METER LA ANIMACIÓN DEL DISPARO
		var midisparo = PROYECTIL.instance()
		get_parent().add_child(midisparo)
		midisparo.position = $Position2D.global_position
		
		#DIRECCIÓN DEL DISPARO
		if sign($Position2D.position.x) == 1:
			midisparo.set_direccion_proyectil(1)
		else:
			midisparo.set_direccion_proyectil(-1)
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = min(velocity.x + acceleration, max_speed)
		$AnimatedSprite.flip_h = false
		#DIRECCIÓN DEL DISPARO
		if sign($Position2D.position.x) == -1:
			$Position2D.position.x *= -1
	elif Input.is_action_pressed("ui_left"):
		velocity.x = max(velocity.x - acceleration, -max_speed)
		$AnimatedSprite.flip_h = true
		#DIRECCIÓN DEL DISPARO
		if sign($Position2D.position.x) == 1:
			$Position2D.position.x *= -1
	else:
		velocity.x = 0
	
	
	if velocity.x == 0:
		$AnimatedSprite.animation = "Idle"
	elif velocity.x > 0 or velocity.x < 0:
		$AnimatedSprite.animation = "Run"
	

func jump():
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			velocity.y -= jump_speed
	
	if !is_on_floor():
		if velocity.y < -1:
			$AnimatedSprite.animation = "Jump"
		if velocity.y > 1:
			$AnimatedSprite.animation = "Falling"
	
