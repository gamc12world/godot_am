
extends Node2D

@onready var x=get_node("Popup")
@onready var x1:MenuButton=$"MenuButton"
@onready var agnet=$"NavigationAgent2D"
# Called when the node enters the scene tree for the first time.
func _ready():
	agnet.max_speed=100
	x1.get_popup().add_item("aman")	
	$AudioStreamPlayer2D.bus="aman"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://main.tscn")
	pass


func _on_v_slider_value_changed(value):
	$CharacterBody2D/Camera2D.zoom=Vector2(value,value)
	$AudioStreamPlayer.volume_db=value
	pass # Replace with function body.

func _on_menu_button_about_to_popup():
	pass # Replace with function body.


func _on_menu_button_pressed():
	pass # Replace with function body.
