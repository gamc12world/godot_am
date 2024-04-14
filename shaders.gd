extends Node2D
var shade=load("res://working_with_shaders.gdshader")
@onready var icon=$Icon
var shaders1=ShaderMaterial.new()
var current_pos:Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	print(icon.position)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_pressed():
	shaders1.shader=shade
	icon.material=shaders1
	pass # Replace with function body.


func _on_button_2_pressed():
	shaders1.shader=null
	pass # Replace with function body.


func _on_button_3_pressed():
	icon.position-=Vector2(100,100)
	pass # Replace with function body.


func _on_button_4_pressed():
	icon.position+=Vector2(100,100)

	pass # Replace with function body.
