extends Node3D

var count = 1000

var radius = 200

var treeScene

func _ready() -> void:
	treeScene = load("res://tree.tscn")
	
	for i in count:
		var tree = treeScene.instantiate()
		var pos = Vector3(randf_range(-radius,radius),0,randf_range(-radius,radius))
		tree.transform.origin = pos
		add_child(tree)
	pass
