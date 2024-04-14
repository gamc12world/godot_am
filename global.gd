extends Node
var player_cord:Vector2
var vector2:Vector2
var plus1=0
var item={}
var x1:Vector2
var lable1:int
var file=FileAccess
var dc="res://xyz.json"
var make_cord_zero=Vector2(0,0)
func _open():
	var file1=file.open("res://btn.txt",FileAccess.READ)
	x1=file1.get_var()
	lable1=file1.get_16()
	file1.close()
	vector2=x1
var json1=JSON.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	_open()
	print("global script runs")
	item=_load_And_save_data()
	_json()
	pass # Replace with function body.
func _json():
	var file_xyz=FileAccess
	var x=file_xyz.open(dc,FileAccess.READ)
	var x5=JSON.parse_string(x.get_as_text())
	print(x5["pos-x"])
	x.close()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func player_cord_update():
	var file=FileAccess
	var file1=file.open("res://btn.txt",FileAccess.READ)
	player_cord=file1.get_var()
	file1.close()
	pass
func _load_And_save_data():
	#if FileAccess.file_exists("res://open.json"):
		#var open1=FileAccess.open("res://open.json",FileAccess.WRITE)
		#var dict=JSON.parse_string(open1.get_as_text())
		#if dict is Dictionary:
			#return dict
		#else:
			#return "something error"
	#else:
		#print("file not found")
	pass
func _make_player_cord_zero():
	var f=file.open("res://btn.txt",FileAccess.WRITE)
	f.store_var(make_cord_zero)
	f.close()
	vector2=make_cord_zero
	pass
