extends CharacterBody2D

var chase=false
var player
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if chase==true:
		player=get_node("../Icon")
		var direc=(player.position-self.position).normalized()
		if direc.x>0:
			pass
		else:
			velocity.x=direc.x*200
		pass
	pass


func _on_area_2d_body_entered(body):
	if body.name=="player":
		chase=true
		pass
	pass # Replace with function body.
