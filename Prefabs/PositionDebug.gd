extends Label
@export var PositionObject:CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if OS.is_debug_build():
		text = "X: " + str(PositionObject.position.x) + "
		Y: " + str(PositionObject.position.y)
	pass
