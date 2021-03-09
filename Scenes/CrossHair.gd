extends Sprite


var crosshair = load("res://Resources/direction.png")

func _ready():
	# Changes only the arrow shape of the cursor.
	# This is similar to changing it in the project settings.
	""" FIX MOUSE SNAPPING OFF WHEN THE SIZE OF CROSSHAIR > DISTANCE OFF SCREEN"""
	Input.set_custom_mouse_cursor(crosshair)
	pass
	# Changes a specific shape of the cursor (here, the I-beam shape).
