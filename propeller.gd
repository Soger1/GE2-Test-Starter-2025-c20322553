extends Node3D

var drone
var rotate
func _ready() -> void:
	drone = get_parent() 

func _process(delta: float):
	rotate = (drone.force.y + drone.force.x) * delta
	if(rotate < 0):
		rotate = 0
	rotate_y(rotate*3)
