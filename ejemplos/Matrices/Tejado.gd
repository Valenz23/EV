extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Mostrar matriz Tejado"):
		print("Tejado GLOBAL: ", self.get_global_transform())
		print("Tejado LOCAL: ", self.get_transform())

	if Input.is_action_pressed("ui_up"):
		self.set_position(get_position()+Vector3(0, 0.1, 0)*delta)
	elif Input.is_action_pressed("ui_down"):
		self.set_position(get_position()-Vector3(0, 0.1, 0)*delta)

	if Input.is_action_pressed("ui_page_up"):
		self.set_global_position(get_global_position()+Vector3(0, 0.1, 0)*delta)
	elif Input.is_action_pressed("ui_page_down"):
		self.set_global_position(get_global_position()-Vector3(0, 0.1, 0)*delta)
