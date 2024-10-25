extends RigidBody2D

func _ready():
	$AnimatedSprite.playing = true
	#obtenim la llista amb els noms de les animacions de la propietat frames de AnimatedSprite.
	var mob_types = $AnimatedSprite.frames.get_animation_names() #Això retorna un array que conté els tres noms d'animació: ["walk", "swim", "fly"]
	
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
