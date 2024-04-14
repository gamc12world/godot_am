extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#ui_right and ui_left
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_down"):
		linear_velocity.y=100
	elif Input.is_action_pressed("ui_up"):
		linear_velocity.y=-100
	elif Input.is_action_pressed("ui_right"):
		linear_velocity.x=100
	elif Input.is_action_pressed("ui_left"):
		linear_velocity.x=-100		
	else:
		linear_velocity.x=0
		linear_velocity.y=0	
	pass
