extends Button


# Declare member variables here. Examples:
# var a = 2

func _on_Button_pressed():
		get_tree().change_scene("res://Scenes/Tempgame.tscn")
		$"/root/globals".register_flag(true)
		print("startgamebutton")
		print(get_tree())
		pass
