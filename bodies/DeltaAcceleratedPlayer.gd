extends KinematicBody2D

const ACCELERATION := 1.0
var velocity := Vector2(1, 0)
var time := 0.0

func _ready():
	pass
	
func _physics_process(delta: float) -> void:
	time += delta
	velocity.x += ACCELERATION * delta
	velocity = move_and_slide(velocity)
