extends CanvasLayer

enum NPCS{HADITA} #Solo hay uno así que 0

const IMAGENES : Dictionary = {
	'HADITA' : preload ("res://FairyAID.png")
}

const TEXTOS_HADITA : Array = [
	'HADITA: ¡Hola, pequeña brujilla!', #0
	'HADITA: Que alegría verte por aquí...', #1
	'HADITA: ¿Eres una brujita buena, verdad?', #etc.
	'HADITA: En ese caso... ',
	'HADITA: ¿Podrías ayudarme con una cosa...',
	'HADITA: FRUTIAGUDA?',
	'HADITA: . . .',
	'HADITA: No es complicado, te lo ',
	'HADITA: prometo, solo tendrás que',
	'HADITA: recoger esas mandarinas para mí',
	'HADITA: ¿Que para qué son?',
	'HADITA:  Verás, ADORO la macedonia ^-^',
	'HADITA: ¡PERO CUIDADO!',
	'HADITA: ¿Ves esas cerezas de ahí?',
	'HADITA:  No son frutas buenas :(',
	'HADITA: Si las tocas te harán daño,', 
	'HADITA: incluso una vez muertas x.x',
	'HADITA: ¡No digas que no te lo advertí',
	'HADITA: Mucha suerte *.*'
]

#Para ver por dónde va hablando
var chats : int = 0

var npc : int = 0

func poner_TEXTO(TEXTO:String, NPC:int, IMAGEN:Texture) -> void:
	show()
	#Esto para pausarlo pero creo que no lo voy a hacer ;)
	#get_tree().paused = true
	$TEXTO.text = TEXTO
	npc = NPC
	$IMAGEN.texture = IMAGEN
	$AnimationPlayer.play("SET_TEXTO")
	

#NPC HADITA
#Esto a lo mejor hay que ponerle más cosas en el título
func _on_HADITA_body_entered(body):
	if body.is_in_group("Player"):
		poner_TEXTO(TEXTOS_HADITA[chats],NPCS.HADITA,IMAGENES['HADITA'])
		chats += 1


func _on_BOTN_pressed():
	match npc:
		NPCS.HADITA:
			if chats < TEXTOS_HADITA.size():
				poner_TEXTO(TEXTOS_HADITA[chats],NPCS.HADITA,IMAGENES['HADITA'])
				chats += 1
			else:
				#conversación acabó
				chats -= TEXTOS_HADITA.size()
				hide()
				#LO DE DEJAR DE PAUSAR PERO TÚ NO LO VAS A HACER
				#get_tree().paused = false
