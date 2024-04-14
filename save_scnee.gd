extends Node2D
var plus1=0
var minus1=0
var c4=load("res://button.tscn")
var x1=preload("res://button.tscn").instantiate()
var x13=x1.get_node("ColorPickerButton")
var x14=x1.get_node("Icon")
var vector2:Vector2
# Called when the node enters the scene tree for the first time.
@export var gravity=0
func _ready():
	$Label.text=str(Global.lable1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Icon.position=Global.vector2
	$Label.text=str(Global.plus1)
	$Label.text=str(Global.plus1)
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://button.tscn")
	pass
var file=FileAccess

func _on_button_pressed():
	Global.vector2.x+=100
	print("1")
	Global.plus1+=1
	pass # Replace with function body.


func _on_button_2_pressed():
	Global.vector2.y+=100
	print("2")	
	#x14.modulate=x13.color
	#print(x13.color)
	Global.plus1-=1
	pass # Replace with function body.


func _on_button_3_pressed():
	var file1=file.open("res://btn.txt",FileAccess.WRITE)
	file1.store_var(Global.vector2)
	file1.store_16(Global.plus1)
	file1.close()
	pass # Replace with function body.


func _on_button_4_pressed():
	var file1=file.open("res://btn.txt",FileAccess.READ)
	Global.vector2=file1.get_var()
	Global.plus1=file1.get_16()
	file1.close()
	pass # Replace with function body.
