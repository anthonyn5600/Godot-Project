extends Area2D

func _on_Gold_body_entered(body):
	if body.get_name() == "Player":
		if $CollisionShape2D.is_disabled() == false:	
			$Gold_Coin.queue_free()
			$CollisionShape2D.set_deferred("disabled",true)
