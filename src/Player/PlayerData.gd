extends Node

var music_db = 0.5
var sound_db = 0.1
var new_game = false
var ending := 0 # 1 bad, # 2 true
var current_scene := 0
var stats := {
	"miss_streak": 0,
	"misses": 0,
	"plays": 0,
}
var main_menu: PackedScene = preload("res://src/Menu/MainMenu.tscn")
var dialogue_scene: PackedScene = preload("res://src/Scene/DialogueScene.tscn")
var credits: PackedScene = preload("res://src/Scene/TextScroll.tscn")
var ending_background = preload("res://assets/backgrounds/street.jpg")

func _ready() -> void:
	pass

func load_player_data(data: Dictionary) -> void:
	current_save = data.duplicate(true)
	print(data)
	current_scene = current_save["current_scene"]
	stats = current_save["stats"]
	print(current_save)

func save_player_data() -> void:
	current_save["current_scene"] = current_scene
	current_save["stats"] = stats

var current_save = {
	"current_scene": 1,
	"stats": {
		"miss_streak": 0,
		"misses": 0,
		"plays": 0,
	},
}

const default_save = {
	"current_scene": 1,
	"stats": {
		"miss_streak": 0,
		"misses": 0,
		"plays": 0,
	},
}

func get_save_date(slot) -> String:
	var F = File.new() #
	var D = Directory.new() 
	if D.dir_exists("user://save"):
		if F.open(str("user://save/",slot,".save"), File.READ_WRITE) == OK:
			var time = OS.get_datetime_from_unix_time(F.get_modified_time(str("user://save/",slot,".save")))
			return str(time["year"])+"/"+str(time["month"])+"/"+str(time["day"])+" "+str(time["hour"])+":"+str(time["minute"])+":"+str(time["second"])
		else:
			return "no save entry"
	else:
		return "no save entry"

func load_game(slot) -> Dictionary:
	print("loaded game ", str(slot))
	var F = File.new() #
	var D = Directory.new() 
	if D.dir_exists("user://save"):
		if F.open(str("user://save/",slot,".save"), File.READ_WRITE) == OK:
			var temp_d = F.get_var()
			print(temp_d)
			print(F.get_modified_time(str("user://save/",slot,".save")))
			return temp_d
		else:
			print("save file doesn't exist, creating one") 
			save_game(slot) 
			return default_save
	else:
		print("directory doesn't exist, creating one")
		D.make_dir("user://save")
		save_game(slot)
		return default_save

func save_game(slot) -> void:
	print("save data ", str(slot))
	save_player_data()
	print(current_save)
	var d = Directory.new()
	if not d.dir_exists("user://save"):
		d.make_dir("user://save")
	var F = File.new()
	F.open(str("user://save/",slot,".save"), File.WRITE)
	F.store_var(current_save)
	print(F.get_modified_time(str("user://save/",slot,".save")))
	F.close()
