extends Camera3D

@onready var Drone = get_parent().find_child("Drone").find_child("camtarget")
@onready var cam = self

func _ready() -> void:
	pass

func _process(delta: float):
	cam.global_position = lerp(cam.global_position, Drone.global_position, delta * 4)
	cam.look_at(Drone.get_parent_node_3d().global_position, Vector3.UP)

	pass
