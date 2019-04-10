extends Button

func _process(delta: float) -> void:
	text = "Pause" if not get_tree().paused else "Resume"

func _on_PauseButton_pressed() -> void:
	get_tree().paused = not get_tree().paused
