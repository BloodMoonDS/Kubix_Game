extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	pass



func _on_area_entered(area):
	print("areaEntered" + str(area))
	if area.name == "Cube":
		print("PlayerDetected")
		get_tree().reload_current_scene()
	pass # Replace with function body.
