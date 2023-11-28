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
	var mandarinaNode2 = get_tree().get_root().find_node("Mandarina2",true,false)
	var mandarinaNode3 = get_tree().get_root().find_node("Mandarina3",true,false)
	var mandarinaNode4 = get_tree().get_root().find_node("Mandarina4",true,false)
	var mandarinaNode5 = get_tree().get_root().find_node("Mandarina5",true,false)
	var mandarinaNode6 = get_tree().get_root().find_node("Mandarina6",true,false)
	var mandarinaNode7 = get_tree().get_root().find_node("Mandarina7",true,false)
	var mandarinaNode8 = get_tree().get_root().find_node("Mandarina8",true,false)
	var mandarinaNode9 = get_tree().get_root().find_node("Mandarina9",true,false)
	var mandarinaNode10 = get_tree().get_root().find_node("Mandarina10",true,false)
	var mandarinaNode11 = get_tree().get_root().find_node("Mandarina11",true,false)
	var mandarinaNode12 = get_tree().get_root().find_node("Mandarina12",true,false)
	#Una vez asignada, conectamos la variable al método que creamos :
	mandarinaNode.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode2.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode3.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode4.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode5.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode6.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode7.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode8.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode9.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode10.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode11.connect("mandarinaCollected",self,"handleMandarinaCollected")
	mandarinaNode12.connect("mandarinaCollected",self,"handleMandarinaCollected")
	
	
	$MandarinasCollectedText.text = String(mandarinas)
	
	#VIDAS
	var vidaNode = get_tree().get_root().find_node("Vida",true,false)
	var vidaNode2 = get_tree().get_root().find_node("Vida2",true,false)
	var vidaNode3 = get_tree().get_root().find_node("Vida3",true,false)
	var vidaNode4 = get_tree().get_root().find_node("Vida4",true,false)
	
	vidaNode.connect("vidaCollected",self,"handleVidaCollected") 
	vidaNode2.connect("vidaCollected",self,"handleVidaCollected") 
	vidaNode3.connect("vidaCollected",self,"handleVidaCollected") 
	vidaNode4.connect("vidaCollected",self,"handleVidaCollected") 
	
	#Que reste vida
	#var playerNode = get_tree().get_root().find_node("KinematicBody2D",true,false)
	#playerNode.connect("player_hit",self,"restarVida")


func handleMandarinaCollected():
	print("Mandarina Collected")
	mandarinas += 1
	$MandarinasCollectedText.text = String(mandarinas)
	#PARA PASAR DE NIVEL esto planeo hacerlo con un botón pero no va
	if $MandarinasCollectedText.text == "1":
		get_tree().change_scene("res://Level2.tscn")


#Para las vidas
func handleHearts(var lifes):
	if lifes == 0:
		heart1.visible = false
		
	if lifes == 1:
		heart2.visible = false
		
	if lifes == 2:
		heart3.visible = false
	
		


func handleVidaCollected():
	print("Vida Collected")
	var player = get_tree().get_root().find_node("KinematicBody2D",true,false)
	if player.lifes < 3:
		player.lifes = player.lifes + 1
	print(player.lifes)
	handleHearts(player.lifes)
	if player.lifes == 3:
		heart3.visible = true
	if player.lifes == 2:
		heart2.visible = true
	if player.lifes == 1:
		heart1.visible = true
	#$VidasCollectedText.text = String(vidas)
