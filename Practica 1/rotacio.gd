extends Node3D

var velocidad = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	var rotacion = velocidad * delta
	rotate_y(rotacion)
	#pass
