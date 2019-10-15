extends Node2D
onready var Bar = preload("res://bar.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var b = Bar.instance()
	#b.get_node("bar").move_and_slide(velocity)
	$Container/ScrollView.add_child(b)

func _spawn():
	var b = Bar.instance()
	#b.get_node("bar").move_and_slide(velocity)
	$Container/ScrollView.add_child(b)