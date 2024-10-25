extends Area2D

export var speed = 400 # A quina velocitat es mourà el jugador (píxels/seg).
var screen_size # Mida de la finestra de joc.

func _ready(): # es crida quan un node entra a l'arbre d'escena.
	screen_size = get_viewport_rect().size 
