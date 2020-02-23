extends AnimationPlayer

func _process(delta):
	play("Moving Icon")
	if !is_playing():
		play("Moving Icon")
	if $"../Box2/CollisionShape2D".is_disabled() == true:
		stop()
