extends Node2D

var procdural=Sky.new()
var x1=VisibleOnScreenEnabler2D
# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D.position.x=0
	$Camera2D/Icon.position.x=0
	x1.new()
	x1.PROCESS_MODE_ALWAYS
	procdural.radiance_size=10
	pass # Replace with function body.

@onready var icon=get_node("Icon")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if Input.is_action_just_pressed("click"):
		#$Camera2D.position.x+=100
	pass


func _on_visible_on_screen_enabler_2d_screen_entered():
	icon.visible=true
	print("something was happend here few millisecond ago")
	pass # Replace with function body.




func _on_button_pressed():
	#print($"Icon");
	#
	$Camera2D.position.x+=100
	pass # Replace with function body.
