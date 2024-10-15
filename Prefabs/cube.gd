extends CharacterBody2D
@export var speed = 30
@export var gravity = 30
@export var Jump_Force = 300
@export var lerp = 0.1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var oldVY = velocity.y
	var oldVX = velocity.x
	if !is_on_floor():
		if velocity.y > 1000:
			velocity.y = 1000
		
		
		velocity.y += gravity
	if is_on_floor():
		pass
	if Input.is_action_just_pressed("ui_accept"):
		if is_on_floor():
			
			velocity.y = Jump_Force*2 * -1
	
	
	var HorDir = Input.get_axis("ui_left","ui_right")
	
	velocity.x = speed *10 * HorDir
	
	if HorDir != 0:
		var oldHorDir:float = HorDir
		$Cube.scale.x = oldHorDir
	##print(velocity.y)
	if velocity.y <= -1:
		$Cube.frame_coords.y = 1
		pass
	if velocity.y >= 1:
		$Cube.frame_coords.y = 2
		pass
	if (velocity.y < 1  && velocity.y > -1) or velocity.y == 0 or is_on_floor():
		$Cube.frame_coords.y = 0
		pass
	
	#smoothMovement
	velocity.y =  lerp(oldVY, velocity.y , lerp*10*1.1)
	velocity.x = lerp(oldVX,velocity.x,lerp)
	move_and_slide()
	pass

func _physics_process(delta):
	pass
