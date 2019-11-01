extends Node2D
onready var Bar = preload("res://bar.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$HTTPRequest.request("https://raw.githubusercontent.com/duyphuonq/todoapp_godot/master/data.json")

func _spawn():
	var b = Bar.instance()
	$Container/ScrollView.add_child(b)

func _on_HTTPGet_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	for x in json.result["note"]:
		var b = Bar.instance()
		b.get_node("Bar/LineEdit").set_text(x)
		b.get_node("Bar/CheckBox")
		$Container/ScrollView.add_child(b)
	var b = Bar.instance()
	$Container/ScrollView.add_child(b)