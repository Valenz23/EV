extends Node3D

var velocidad = 2

var rotacionY = 0
var minY = -90
var maxY = 90

var rotacionZ = 0
var minZ = -90
var maxZ = 90

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	

	var movimientoY = 0
	var movimientoZ = 0
	
	if Input.is_action_pressed("camara izquierda"):
		if rotacionY > minY:
			movimientoY -= velocidad
			rotacionY -= velocidad
		
	if Input.is_action_pressed("camara derecha"):
		if rotacionY < maxY:
			movimientoY += velocidad
			rotacionY += velocidad
		
	if Input.is_action_pressed("camara arriba"):
		if rotacionZ < maxZ:
			movimientoZ += velocidad
			rotacionZ += velocidad
		
	if Input.is_action_pressed("camara abajo"):
		if rotacionZ > minZ:
			movimientoZ -= velocidad
			rotacionZ -= velocidad	
			
	#print("y= ", rotacionY," z= ", rotacionZ)

	rotate_y(movimientoY * delta)
	rotate_z(movimientoZ * delta)
	
