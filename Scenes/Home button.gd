extends Button


func _on_Home_button_pressed():
	print("going home again.")
	print(get_tree())
	print("button pressed?")
	get_tree().change_scene("res://Scenes/Main.tscn")
	pass
	pass # Replace with function body.


func _on_Spawner_pressed():
	pass # Replace with function body.
