extends Control
@export var target_scene_path :String= "res://enemy.tscn"
@onready var progressbar=$ProgressBar
var scene_load_data=0 
var arr=[]
var max_dict={
	0:0,
	1:30,
	2:60,
	3:90
}
func _ready() -> void:
	# Request to load the target scene:
	#ResourceLoader.load_threaded_request(target_scene_path)
	pass
func _process(_delta: float):
	progressbar.value+=.01
	if progressbar.value==100:
		get_tree().change_scene_to_file("res://s1.tscn")
	print(Engine.get_frames_per_second())s1	pass


func _on_option_button_item_selected(index):
	Engine.max_fps=max_dict[index]
	pass # Replace with function body.
#func _process(delta):
	#scene_load_data=ResourceLoader.load_threaded_get_status(target_scene_path,arr)
	#progressbar.value=arr[0]*100
	#if scene_load_data==ResourceLoader.THREAD_LOAD_LOADED:
		#print("nice one")
		#pass
	#else:
		#print("not happy at all")
	#pass
