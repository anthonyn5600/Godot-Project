extends Area2D

func _on_Box1_area_entered(area):
	if area.get_name() == "Beam Collision":
		if $Box1C.is_disabled() == false:
			$Sprite2.queue_free()
			$Box1C.disabled(true)
	