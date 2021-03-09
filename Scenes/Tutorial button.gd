extends Button


# Declare member variables here. Examples:
# var a = 2

func _on_Button_pressed():
		get_tree().change_scene("res://Scenes/tutorial.tscn")
		print("startgamebutton")
		print(get_tree())
		pass
