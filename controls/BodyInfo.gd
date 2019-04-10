extends Control

var body = null

func set_body(body):
	self.body = body
	$TitleLabel.text += " -> " + body.name

func _physics_process(delta: float) -> void:
	if (body != null):
		$VelocityLabel.text = "Velocity: " + str(body.velocity)
		$PositionLabel.text = "Position: " + str(body.global_position)
		$TimeLabel.text = "Time: " + str(body.time)
