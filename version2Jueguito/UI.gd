extends CanvasLayer

var mandarinas = 0
var fresitas = 0
var meloncitos = 0

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
	
	#MANDARINAS
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
	#-------------
	
	#VIDAS
	var vidaNode = get_tree().get_root().find_node("Vida",true,false)
	var vidaNode2 = get_tree().get_root().find_node("Vida2",true,false)
	var vidaNode3 = get_tree().get_root().find_node("Vida3",true,false)
	var vidaNode4 = get_tree().get_root().find_node("Vida4",true,false)
	
	vidaNode.connect("vidaCollected",self,"handleVidaCollected") 
	vidaNode2.connect("vidaCollected",self,"handleVidaCollected") 
	vidaNode3.connect("vidaCollected",self,"handleVidaCollected") 
	vidaNode4.connect("vidaCollected",self,"handleVidaCollected") 
	
	#----------------
	
	#FRESITAS
	var fresitaNode = get_tree().get_root().find_node("Fresita",true,false)
	var fresitaNode2 = get_tree().get_root().find_node("Fresita2",true,false)
	var fresitaNode3 = get_tree().get_root().find_node("Fresita3",true,false)
	var fresitaNode4 = get_tree().get_root().find_node("Fresita4",true,false)
	var fresitaNode5 = get_tree().get_root().find_node("Fresita5",true,false)
	var fresitaNode6 = get_tree().get_root().find_node("Fresita6",true,false)
	var fresitaNode7 = get_tree().get_root().find_node("Fresita7",true,false)
	var fresitaNode8 = get_tree().get_root().find_node("Fresita8",true,false)
	var fresitaNode9 = get_tree().get_root().find_node("Fresita9",true,false)
	var fresitaNode10 = get_tree().get_root().find_node("Fresita10",true,false)
	var fresitaNode11 = get_tree().get_root().find_node("Fresita11",true,false)
	var fresitaNode12 = get_tree().get_root().find_node("Fresita12",true,false)
	
	fresitaNode.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode2.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode3.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode4.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode5.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode6.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode7.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode8.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode9.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode10.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode11.connect("fresitaCollected",self,"handleFresitaCollected")
	fresitaNode12.connect("fresitaCollected",self,"handleFresitaCollected")
	$FresitasCollectedText.text = String(fresitas)
	
	
	#MELONES
	var meloncitoNode = get_tree().get_root().find_node("Meloncito",true,false)
	var meloncitoNode2 = get_tree().get_root().find_node("Meloncito2",true,false)
	var meloncitoNode3 = get_tree().get_root().find_node("Meloncito3",true,false)
	var meloncitoNode4 = get_tree().get_root().find_node("Meloncito4",true,false)
	var meloncitoNode5 = get_tree().get_root().find_node("Meloncito5",true,false)
	var meloncitoNode6 = get_tree().get_root().find_node("Meloncito6",true,false)
	var meloncitoNode7 = get_tree().get_root().find_node("Meloncito7",true,false)
	var meloncitoNode8 = get_tree().get_root().find_node("Meloncito8",true,false)
	var meloncitoNode9 = get_tree().get_root().find_node("Meloncito9",true,false)
	var meloncitoNode10 = get_tree().get_root().find_node("Meloncito10",true,false)
	var meloncitoNode11 = get_tree().get_root().find_node("Meloncito11",true,false)
	var meloncitoNode12 = get_tree().get_root().find_node("Meloncito12",true,false)
	
	meloncitoNode.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode2.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode3.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode4.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode5.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode6.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode7.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode8.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode9.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode10.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode11.connect("meloncitoCollected",self,"handleMeloncitoCollected")
	meloncitoNode12.connect("meloncitoCollected",self,"handleMeloncitoCollected")

#Para las mandarinas
func handleMandarinaCollected():
	mandarinas += 1
	$MandarinasCollectedText.text = String(mandarinas)
	#PARA PASAR DE NIVEL esto planeo hacerlo con un botón pero no va
	if $MandarinasCollectedText.text == "12":
		get_tree().change_scene("res://Level2.tscn")


#Para las fresitas:
func handleFresitaCollected():
	fresitas += 1
	$FresitasCollectedText.text = String(fresitas)
	if $FresitasCollectedText.text == "12":
		get_tree().change_scene("res://Level3.tscn") 
	
	
#Para los meloncitos
func handleMeloncitoCollected():
	meloncitos += 1
	$MeloncitosCollectedText.text = String(meloncitos)
	if $MeloncitosCollectedText.text == "12":
		get_tree().change_scene("res://FINAL.tscn") 
	

#Para las vidas
func handleHearts(var lifes):
	if lifes == 0:
		heart1.visible = false
		
	if lifes == 1:
		heart2.visible = false
		
	if lifes == 2:
		heart3.visible = false
	
		


func handleVidaCollected():
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





