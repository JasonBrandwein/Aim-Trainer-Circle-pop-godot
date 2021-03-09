extends Node2D

var GLOBALHIT = 0
var flag = true
var zindex = 10
var highscore = 0
var loginflag = false
var players
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _check_highscore(temp,flag):
	if highscore < temp:
		if flag == true:
			players.checkhighscore(temp)
		else:
			highscore = temp
	else:
		print("Not a new highscore")
func _ready():
	players = playerdata.new()
	loaddata()
#	players.getall()
	pass # Replace with function body.
func get_highscore():
	return highscore	
func _globaldata(GLOBALHIT):
	GLOBALHIT = 69420
func register_globaldata(in_GLOBALHIT):
	GLOBALHIT = in_GLOBALHIT
func get_globalhit():
	return GLOBALHIT
func register_flag(givenflag):
	flag = givenflag;
func get_flag():
	return flag
func get_zindex():
	return zindex
func set_zindex():
	zindex += 1


var save_path = "res://save-file.cfg"
var config = ConfigFile.new()
var load_response = config.load(save_path)
var DisplayValue = 0

class playerdata:
	var name="John Doe"
	var attempts=0
	var highscore = 0
	func checkhighscore(hit):
		print("hit = " + str(hit) + " highscore =" + str(highscore))
		if hit > highscore:
			highscore = hit
			print("highscore updated")
	func setattempts(attempts):
		attempts+=1
	func setname(givenname):
		name = givenname
	func getname():
		return name
	func getattempts():
		return attempts
	func getall():
		var actualstring = (str(name) + ", Hit " + str(highscore) + ", Attempts " + str(attempts) + ".\n")
		print(actualstring)
		return actualstring
	func dictionary(file):
		var dictionary = {"Name": name, "Highscore": highscore, "Attempts": attempts}
		print (dictionary)
		file.store_string(var2str(dictionary))
func _load_data():
	pass
func _save_data():
	pass
func saveValue(section,key):
	config.set_value(section,key,DisplayValue)
	config.save(save_path)
func loadValue(section,key):
	config.get_value(section,key,DisplayValue)
	
	
var playervar = playerdata.new()

#
#func setupdata():
#	var file = File.new()
#	file.open("res://SaveData/Savedata.json", File.READ_WRITE)
#
#	for i in range(0,10): 
#		players.append(playerdata.new())
#	for i in range(0,10):
#		print(players[i].getall())
#		players[i].dictionary(i,file)

var path = "res://SaveData/Savedata.res"
func givedata():
	return playervar
func loaddata():
	var file = File.new()
	file.open("res://SaveData/Savedata.json", File.READ_WRITE)
	var read_dictionary = str2var(file.get_as_text())
	print(read_dictionary)
func login(name):
	loginflag = true
	var file = File.new()
	var path = "res://SaveData/" + name + ".res"
	print("path = " ,path)
	print(file.file_exists(path))
	if file.file_exists(path):
		file.open(path, File.WRITE_READ)
		playervar.dictionary(file)
	else:
		file.open(path, File.WRITE)
		file.close()
		file.open(path, File.WRITE_READ)
		playervar.name = name
		playervar.dictionary(file)
	
