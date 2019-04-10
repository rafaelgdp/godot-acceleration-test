extends Node2D

func _ready():
	var gui_nodes = $GUI.get_children()
	var body_nodes = get_children()
	for i in range(3):
		gui_nodes[i].set_body(body_nodes[i])

func _on_RestartButton_pressed() -> void:
	get_tree().reload_current_scene()
