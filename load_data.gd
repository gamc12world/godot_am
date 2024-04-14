extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	_load_game()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://save_scnee.tscn")
	pass # Replace with function body.
func _load_game():
	var load_the_scene=preload("res://save_scnee.tscn").instantiate()
	var node=load_the_scene.get_node("Icon")
	node.reparent(self)
	node.position=Global.vector2
	pass
var dict={
	"pos-x":Vector2(10,0),
}
var json1=JSON.new()
func _on_button_pressed():
	Global._make_player_cord_zero()
	pass # Replace with function body.
