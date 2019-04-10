extends KinematicBody2D

var velocity = Vector2(1, 0)
var time := 0.0

func _ready():
	pass
	
func _physics_process(delta: float) -> void:
	time += delta
	velocity = move_and_slide(velocity)
