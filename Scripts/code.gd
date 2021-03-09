extends Node


const bullseye = preload("res://Scenes/bullseyescene.tscn")

var flag = true

func _ready():
	spawn()
	pass
	
func spawn():
	while flag == true:
		var bullseyetarget = bullseye.instance()
		var random = RandomNumberGenerator.new()
		var screen_size = get_viewport().get_visible_rect().size
		var pos = Vector2()
		random.randomize()
		pos.x = random.randf_range(25, screen_size.x-50)
		random.randomize()
		pos.y = random.randf_range(25, screen_size.y-50)
		bullseyetarget.set_position(pos)
		get_node("Container").add_child(bullseyetarget)
		yield(utils.create_timer(rand_range(0.1, .3)), "timeout")
	pass
