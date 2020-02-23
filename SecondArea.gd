extends Area2D

var scene = preload("res://npc drops/Gold_Coin.tscn")
var node = scene.instance()

var Spriteposition = Vector2(0,0)

func _ready():
	connect("body_entered", self, "_on_body_entered");

func _process(delta):
	if Input.is_action_just_pressed("spacebeam"):
		print(delta)
		
func _on_body_entered(body):
	if body.get_name() == "Beam Collision":
		if $CollisionShape2D.is_disabled() == false:
			call_deferred("add_child",node)
			node.set_position(Spriteposition)
			$Sprite2.queue_free()
			$CollisionShape2D.set_deferred("disabled", true)
