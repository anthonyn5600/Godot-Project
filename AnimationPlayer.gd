extends AnimationPlayer

func _process(delta):
	play("Moving Icon")
	if !is_playing():
		play("Moving Icon")
	if $"../Box1/Box1C".is_disabled() == true:
		stop()
