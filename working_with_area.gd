extends Node2D

var x1=preload("res://working_with_shaders.gdshader")
var new_material=ShaderMaterial.new()
@onready var xr=get_node("Node2D/Icon")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var new1=0
func _process(delta):
	xr.position=Vector2(200,123)
	if new1>=10:
		print(xr.global_position)
		new_material.shader=x1
		$Node2D/Icon.material=new_material
		pass
	else:
		$Node2D/Icon.material=null
		pass		
	pass
func _on_area_2d_body_entered(body):
	if Input.is_action_just_pressed("click"):
		print("click")
		pass
	pass # Replace with function body.

func _on_button_pressed():
	new1+=1
	$Label.text=str(new1)
	pass # Replace with function body.
# 241+482=723
