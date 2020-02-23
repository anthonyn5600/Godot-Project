extends Area2D

var scene = preload("res://npc drops/Gold_Coin.tscn")
var node = scene.instance()

var Spriteposition = Vector2(0,0)

func _ready():
	connect("body_entered", self, "_on_body_entered");

func _on_body_entered(body):
	if body.get_name() == "Beam Collision":
		if $Box1C.is_disabled() == false:
			call_deferred("add_child",node)
			node.set_position(Spriteposition)
			$Sprite.queue_free()
			$Box1C.set_deferred("disabled", true)
