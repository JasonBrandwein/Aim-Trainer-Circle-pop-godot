extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.

func _ready():	
	if $"/root/globals".loginflag == true:
		print("login is true")
		var playerdata = $"/root/globals".givedata()
		self.set_text("Highscore = " + str(playerdata.highscore)+"!")
	pass # Replace with function body.
	
func _settext(string):
	if $"/root/globals".loginflag == true:
		var playerdata = $"/root/globals".givedata()
		self.set_text("Highscore = " + str(playerdata.highscore)+"!")
	else:
		self.set_text(string)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
