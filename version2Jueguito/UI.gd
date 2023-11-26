extends CanvasLayer

var mandarinas = 0

#Para las vidas
var heart1
var heart2
var heart3




# Called when the node enters the scene tree for the first time.
func _ready():
	#Para las vidas
	heart1 = get_node("Heart1")
	heart2 = get_node("Heart2")
	heart3 = get_node("Heart3")
	
	#Esta variable buscará en nuestro mundo un objeto que tenga el script asignado, en este caso "Mandarina"
	var mandarinaNode = get_tree().get_root().find_node("Mandarina",true,false)
	#Una vez asignada, conectamos la variable al método que creamos :
	mandarinaNode.connect("mandarinaCollected",self,"handleMandarinaCollected")
	
	$MandarinasCollectedText.text = String(mandarinas)
	
	#VIDAS
	var vidaNode = get_tree().get_root().find_node("Vida",true,false)
	vidaNode.connect("vidaCollected",self,"handleVidaCollected") 
	
	#Que reste vida
	#var playerNode = get_tree().get_root().find_node("KinematicBody2D",true,false)
	#playerNode.connect("player_hit",self,"restarVida")


func handleMandarinaCollected():
	print("Mandarina Collected")
	mandarinas += 1
	$MandarinasCollectedText.text = String(mandarinas)


#Para las vidas
func handleHearts(var lifes):
	if lifes == 0:
		heart1.visible = false
		
	elif lifes == 1:
		heart2.visible = false
		
	elif lifes == 2:
		heart3.visible = false
	
	elif lifes > 2:
		heart3.visible = true


func handleVidaCollected():
	print("Vida Collected")
	var player = get_tree().get_root().find_node("KinematicBody2D",true,false)
	player.lifes = player.lifes + 1
	print(player.lifes)
	handleHearts(player.lifes)
	#$VidasCollectedText.text = String(vidas)
	


