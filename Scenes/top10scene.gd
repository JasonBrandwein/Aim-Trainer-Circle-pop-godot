extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
var count = 0
func _process(delta):
	if Input.is_action_just_pressed("press_escape") == true:
		print("escape pressed")
		count = count+1
	if (count == 2):
		count = 0
		print("going home")
		get_tree().change_scene("res://Scenes/Main.tscn")


func _on_Back_home_pressed():
		get_tree().change_scene("res://Scenes/Main.tscn")
		$"/root/globals".register_flag(true)
		print("startgamebutton")
		print(get_tree())
		pass


func _on_Print_text_pressed():

	pass # Replace with function body.


func _on_Back_Home_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
	pass # Replace with function body.
