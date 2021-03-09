extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_Button_pressed():

		print("top10 button")
		print(get_tree())
		pass


func _on_Top10button_pressed():
	get_tree().change_scene("res://Scenes/top10scene.tscn")
	pass # Replace with function body.


func _on_Loginbutton_pressed():
	get_tree().change_scene("res://Scenes/Login.tscn")
	pass # Replace with function body.
