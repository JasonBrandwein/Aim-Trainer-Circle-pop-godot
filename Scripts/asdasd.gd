extends Timer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var DisplayValue = 0
onready var timer = get_node("Timer")
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.set_wait_time(3)
	timer.start
	
func TimerTimeout():
	Displayvalue += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
