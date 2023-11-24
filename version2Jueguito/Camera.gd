extends Camera2D

# Declarar variables del jugador
onready var player = get_tree().get_nodes_in_group("Player")[0]


# Función llamada en cada cuadro de la animación
func _process(delta):
	global_position.x = player.global_position.x
