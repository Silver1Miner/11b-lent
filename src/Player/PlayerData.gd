extends Node

var music_db = 0.2
var sound_db = 0.1
var text_delay = 0.02
var new_game = false
var current_scene := 0
var current_line := 0
var completed_scenes := []

var main_menu: PackedScene = preload("res://src/Menu/MainMenu.tscn")
var dialogue_scene: PackedScene = preload("res://src/Scene/DialogueScene.tscn")
var credits: PackedScene = preload("res://src/Scene/TextScroll.tscn")
var title_card: PackedScene = preload("res://src/Scene/TitleCard.tscn")
var ending_background = preload("res://assets/backgrounds/cherry-min.jpg")

func load_player_data() -> void:
	var save_game = File.new()
	if not save_game.file_exists("user://lent.save"):
		return # Error! We don't have a save to load.
	save_game.open("user://lent.save", File.READ)
	completed_scenes = parse_json(save_game.get_line())
	music_db = parse_json(save_game.get_line())
	sound_db = parse_json(save_game.get_line())
	text_delay = parse_json(save_game.get_line())
	if not music_db:
		music_db = 0.2
	if not sound_db:
		sound_db = 0.1
	if not text_delay:
		text_delay = 0.02
	save_game.close()

func save_player_data() -> void:
	var save_game = File.new()
	save_game.open("user://lent.save", File.WRITE)
	save_game.store_line(to_json(completed_scenes))
	save_game.store_line(to_json(music_db))
	save_game.store_line(to_json(sound_db))
	save_game.store_line(to_json(text_delay))
	save_game.close()

var default_save = {
	"current_scene": 0,
	"current_line": 0,
}

func get_save_date(slot) -> String:
	var F = File.new() #
	var D = Directory.new() 
	if D.dir_exists("user://save"):
		if F.open(str("user://save/",slot,".save"), File.READ_WRITE) == OK:
			var time = OS.get_datetime_from_unix_time(F.get_modified_time(str("user://save/",slot,".save")))
			var scene = load_game(slot)["current_scene"]
			var act = ""
			if scene > 17:
				act = "Act III "
			elif scene > 7:
				act = "Act II "
			else:
				act = "Act I "
			return act + "Scene " + str(scene) + " (" + str(time["year"])+"/"+str(time["month"])+"/"+str(time["day"])+" "+str(time["hour"])+":"+str(time["minute"])+":"+str(time["second"]) + ")"
		else:
			return "no save entry"
	else:
		return "no save entry"

func load_game(slot) -> Dictionary:
	var F = File.new() #
	var D = Directory.new() 
	if D.dir_exists("user://save"):
		if F.open(str("user://save/",slot,".save"), File.READ_WRITE) == OK:
			var temp_d = F.get_var()
			#print(temp_d)
			#print(F.get_modified_time(str("user://save/",slot,".save")))
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
	var current_save = {
		"current_scene": current_scene,
		"current_line": current_line,
	}
	print(current_save)
	var d = Directory.new()
	if not d.dir_exists("user://save"):
		d.make_dir("user://save")
	var F = File.new()
	F.open(str("user://save/",slot,".save"), File.WRITE)
	F.store_var(current_save)
	print(F.get_modified_time(str("user://save/",slot,".save")))
	F.close()
