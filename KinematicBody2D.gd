extends KinematicBody2D

var motion = Vector2(0,0)

func _process(delta):
	Playermovement()
	Cancelmovementwhenanimation()
	if Input.is_action_pressed("spacebeam"):
		$"Camera2D/VBoxContainer".set_visible(true)

func Playermovement():
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x -= 10
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x += 10 
	elif Input.is_action_pressed("up") and not Input.is_action_pressed("down"):
		motion.y -= 10 
	elif Input.is_action_pressed("down") and not Input.is_action_pressed("up"):
		motion.y += 10 	
	else:
		motion.x = 0
		motion.y = 0

func Cancelmovementwhenanimation():
	if(!$Beam_Animation.is_playing()):
		if motion.x > 0:
			$AnimatedSprite.play("East")
		elif motion.x < 0:
			$AnimatedSprite.play("West")
		elif motion.y < 0:
			$AnimatedSprite.play("North")
		elif motion.y > 0:
			$AnimatedSprite.play("South")

		move_and_slide(motion)
	else:
		motion.x = 0
		motion.y = 0
		
