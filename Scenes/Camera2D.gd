extends Camera2D
@export var Follow:CharacterBody2D 
@export var lerp = 0.1
var Fpos

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Fpos = Follow.position
	position = lerp(position, Fpos, lerp/10*9)
	
	pass
