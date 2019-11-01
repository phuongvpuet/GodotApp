extends Control
var can_spwan = true
#var syncc = false

func _ready():
	if not get_node("Bar/LineEdit").get_text():
		$Bar/CheckBox.hide()
func _on_LineEdit_text_entered(new_text):
	if (can_spwan and new_text):
		var View = get_tree().get_root().get_node("MyApp")._spawn()
		can_spwan = false
func _on_CheckBox_pressed():
	var children = get_tree().get_root().get_node("MyApp/Container/ScrollView").get_child_count()
	if children > 1:
		get_node(".").queue_free()
	
func _on_LineEdit_text_changed(new_text):
	if new_text or get_node("Bar/LineEdit").get_text():
		$Bar/CheckBox.show()
	else:
		$Bar/CheckBox.hide()