extends VBoxContainer

func _on_Label2_mouse_entered():
	$Label2.add_color_override("font_color", Color(0, 1, 1, 1))
	
func _on_Label2_mouse_exited():
	$Label2.add_color_override("font_color", Color( 1, 0.98, 0.94, 1))

func _on_Label2_gui_input(event):
	if event is InputEventMouseButton:
		if $"../../AnimatedSprite".get_animation() == "South":
			$"../../Beam_Animation".play("Beam")
		elif $"../../AnimatedSprite".get_animation() == "East":
			$"../../Beam_Animation".play("Beam East")
		elif $"../../AnimatedSprite".get_animation() == "West":
			$"../../Beam_Animation".play("Beam West")
		elif $"../../AnimatedSprite".get_animation()== "North":
			$Beam_Animation.play("Beam North")# Replace with function body
