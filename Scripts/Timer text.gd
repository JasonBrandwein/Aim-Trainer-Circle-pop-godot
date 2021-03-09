extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ms = 0
var s = 60
var m = 0
func _process(delta):
		if m <= 9 &&  s != 0:
				s-= 1
				ms = 0
				
		if s <= 59  && s !=0:
				m -= 1
				s = 0
		set_text(str(m)+":"+str(s)+":"+str(ms))
		
		pass
		
func on_ms_timeout():
	ms -= 1
	pass
	
