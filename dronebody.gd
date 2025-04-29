extends CharacterBody3D
@export var mass = 1
@export var force = Vector3.ZERO
@export var acceleration = Vector3.ZERO
@export var vel = Vector3.ZERO
@export var speed:float
@export var max_speed: float = 10.0
@export var new_force = Vector3.ZERO
@export var damping = 0.1

func _process(delta: float):
	
	var turn = Input.get_axis("left","right")	
	
	if abs(turn) > 0:
		rotate_y(-turn * delta)
	pass
	
	var for_back = Input.get_axis("forward","reverse")
	
	var up_down = Input.get_axis("up","down")
	new_force = lerp(Vector3(0,0,0), new_force,delta)
	new_force += (for_back) * global_transform.basis.x
	new_force += (-up_down*12) * Vector3.UP
	new_force += -9.8 * Vector3.UP
	
		
func _physics_process(delta: float) -> void:
	force = lerp(force,new_force,delta)
	acceleration = force / mass
	vel += acceleration * delta
	vel -= vel * delta * damping
	set_velocity(vel)
	move_and_slide()
	
	
	
	pass
	
