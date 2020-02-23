extends Area2D

func _on_Coll_area_entered(area):
	if(area.get_name() == "Gold"):
		if $CollisionShape2D.is_disabled() == false:	
			area.queue_free()
