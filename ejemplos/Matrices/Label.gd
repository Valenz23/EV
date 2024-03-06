extends Label

func convert_matrix_to_text(matrix):
	var b = matrix.basis
	var o = matrix.origin
	var text = ""
	text += str(b[0].x) + " "
	text += str(b[1].x) + " "
	text += str(b[2].x) + " "
	text += str(o.x) + "\n"
	
	text += str(b[0].y) + " "
	text += str(b[1].y) + " "
	text += str(b[2].y) + " "
	text += str(o.y) + "\n"
	
	text += str(b[0].z) + " "
	text += str(b[1].z) + " "
	text += str(b[2].z) + " "
	text += str(o.z) + "\n"
	
	text += "0 0 0 1"
	return text

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var t1 = $Base/Tejado.get_transform()
	var t2 = $Base.get_transform()
	self.set_text("Tejado local: \n" + convert_matrix_to_text(t1) + "\nBase local: \n" + convert_matrix_to_text(t2))
