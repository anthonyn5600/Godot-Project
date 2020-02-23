extends RigidBody2D

const VELOCITY = Vector2(0, -1000)

func _process(delta):
	global_position += VELOCITY * delta
