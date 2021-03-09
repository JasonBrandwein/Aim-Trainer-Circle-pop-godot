extends Node2D
var flag = true

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	if Input.is_action_just_pressed("press_escape") == true:
		print("escape pressed")
		count = count+1
	if (count == 2):
		count = 0
		print("going home")
		get_tree().change_scene("res://Scenes/Main.tscn")
		print(get_tree())
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

