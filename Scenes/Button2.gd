extends Button


# Declare member variables here. Examples:
# var a = 2	

func _on_Button_pressed():
	print("going home again.")
	print(get_tree())
	print("button pressed?")
	get_tree().change_scene("res://Scenes/Main.tscn")
	pass
