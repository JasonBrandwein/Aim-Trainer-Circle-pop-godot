extends RichTextLabel
var ms = 0
var s = 30
var hit = 0
var flag = true
var globalhit = 1
func _ready():
	globalhit = $"/root/globals".get_highscore()
	print("creatingstring")
	if $"/root/globals".loginflag == false:
		$"Timer/High score"._settext(_createstring())
	$"/root/globals".register_globaldata(hit)


func _createstring():
	var format_string = "Highscore is %s!"
	var actualstring = format_string % str(globalhit)
	print(actualstring)
	return actualstring
		
var spamflag = true

func _process(delta):
	if(s == 0 && spamflag == true):
		var loginflag = $"/root/globals".loginflag
		$"Timer/Go Agane"._hello()
		$"Timer/Go Home"._hello()
		print("loginflag == " + str(loginflag))
		$"/root/globals"._check_highscore(hit,loginflag)
		$"/root/globals".register_globaldata(hit)
		spamflag = false
	if ms >= 1 && s >= 0:
		ms=0
		s-=1
	hit = $"/root/globals".get_globalhit()
	set_text("Time Left " + str(s) + "\nTargets Hit :" + str(hit))
	if s == 0:
		flag = false
		$"/root/globals".register_flag(flag)
	pass


func _on_Timer_timeout():
	if s!=0:
		ms+= 1	


func _on_Back_Home_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
	$"/root/globals".register_flag(true)
	pass # Replace with function body.


func _on_Go_Agane_pressed():
	get_tree().change_scene("res://Scenes/Tempgame.tscn")
	$"/root/globals".register_flag(true)
	pass # Replace with function body.

func _on_Go_Home_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
	$"/root/globals".register_flag(true)
	pass # Replace with function body.
