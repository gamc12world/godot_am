extends Control
@export var color4:Color
@onready var color1:ColorPickerButton=$ColorPickerButton
var colorcontrol:Color
# Called when the node enters the scene tree for the first time.
func _ready():
	$OptionButton.add_item("nice one")
	$OptionButton.add_item("nice two")
	$OptionButton.add_item("nice three")
	$OptionButton.add_item("nice four")
	pass # Replace with function body.

func _on_button_dragged():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://save_scnee.tscn")
	pass


func _on_color_picker_button_color_changed(color):
	color=colorcontrol
	pass # Replace with function body.


func _on_color_picker_button_pressed():
	pass # Replace with function body.

var file=FileAccess
func _on_color_picker_button_2_pressed():
	var fiek=file.open("res://btn.txt",FileAccess.WRITE)
	fiek.store_var(str(colorcontrol))
	fiek.close()
	pass # Replace with function body.


func _on_button_pressed():
	var fiek1=file.open("res://btn.txt",FileAccess.READ)
	var x=fiek1.get_var()
	fiek1.close()
	print(x)
	pass # Replace with function body.


func _on_option_button_item_selected(index):
	if index==1:
		$AudioStreamPlayer.play()
		print("ncie")
	else:
		$AudioStreamPlayer.stop()
		pass
	print(index)
	pass # Replace with function body.
func _input(event):
	if event.is_action_pressed("ui_down"):
		$OptionButton.show_popup()
