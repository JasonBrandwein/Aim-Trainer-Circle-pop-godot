extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var hit
var flag = true
onready var timer = get_node("Timer")
var time = 0;
# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_position_in_parent())
	self.z_index = $"/root/globals".get_zindex()
	$"/root/globals".set_zindex()
	timer.set_wait_time(1)
	timer.start()
	hit = $"/root/globals".get_globalhit()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	flag = $"/root/globals".get_flag()
	if (flag == false):
		queue_free()
	if time == 5:
		queue_free()

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object pressed")
			hit = $"/root/globals".get_globalhit()
			hit = hit + 1
			$"/root/globals".register_globaldata(hit)
			print("hit = ")
			print(hit)
			queue_free()
	pass # Replace with function body.
	
func _on_Timer_timeout():
	time+=1
	pass # Replace with function body.


func _on_Area2D_mouse_entered():
	print("in hit box zone")
	print(self.get_world_2d())
	print(self.get_local_mouse_position())
	print(get_position_in_parent())
	print(get_world_2d())

	pass # Replace with function body.
