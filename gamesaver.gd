extends Node
class_name  gamesaver
var file=FileAccess
@onready var player=$"../Player"
func _process(delta):
   
	pass
func load_game():
	var x1=file.open("res://btn.txt",FileAccess.WRITE)
	x1.store_var(%Player)
	x1.close()
	pass
