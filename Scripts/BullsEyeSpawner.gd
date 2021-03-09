extends Node

const bullseye = preload("res://bullseyescene.tscn")

func _ready(): 
	spawn()
	pass
	"""
func spawn():
	while true:
		var rand = RandomNumberGenerator.new()
		var screen_size = get_viewport().get_visible_rect().size
		var bullseyetarget = bullseye.instance()
		var bullseyepos = Vector2()
		bullseyepos.x = rand.randf_range(0, screen_size.x)
		rand.randomize()
		bullseyepos.y = rand.randf_range(0, screen_size.y)
		bullseyetarget.set_pos(bullseyepos)
		yield(utils.create_timer(rand_range(0.5,1)), "timeout")
	pass	
"""


func spawn():
	var enemy = bullseye.instance()
	get_node("")
