extends Node3D

var drone

func _ready() -> void:
	drone = get_parent() 

func _process(delta: float):
	rotate_y(drone.vel.y * delta)
