extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var loginflag = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
var count =0
func _process(delta):
	var loginflag = $"/root/globals".loginflag
	if Input.is_action_just_pressed("press_escape") == true:
		print("escape pressed")
		count = count+1
	if (count == 2):
		count = 0
		print("going home")
		get_tree().change_scene("res://Scenes/Main.tscn")
		print(get_tree())
	if loginflag == true: 
#		Username = NULL
#Hit = NULL
#Attempts = NULL
		var playerstuff = $"/root/globals".givedata()
		$"Stats text".set_text("Username = " + str(playerstuff.name) + "\nHit = " + str(playerstuff.highscore) + "\nAttempts = " + str(playerstuff.attempts))

func _on_Go_home_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
	pass # Replace with function body.


func _on_Go_home_toggled(button_pressed):
	pass # Replace with function body.


func _on_TextEdit_text_changed():
	var edittext = $"Wall-Background-HD-Wallpapers-16562/TextEdit".get_text()
	print($"Wall-Background-HD-Wallpapers-16562/TextEdit".get_text())
	if "Username: " in $"Wall-Background-HD-Wallpapers-16562/TextEdit".get_text():
		print("username detected")
		var regex = RegEx.new()
		regex.compile("(?<=Username: )(?s)(.*$)")
		var result = regex.search(edittext)
		print("edittext =", edittext)
		print("result = ", result)
		print(result.get_string())
		edittext = result
		$"Wall-Background-HD-Wallpapers-16562/TextEdit".set_text(edittext.get_string())
	pass # Replace with function body.


func _on_TextEdit_script_changed():
	
	pass # Replace with function body.


func _on_Login_pressed():
	var edittext = $"Wall-Background-HD-Wallpapers-16562/TextEdit".get_text()
	print ("username = " + edittext)
	$"/root/globals".login(edittext)
	loginflag = true
	pass # Replace with function body.
