extends Node

var music_db = 0.5
var sound_db = 0.1
var new_game = false
var current_scene := 0
var completed_scenes := []

var main_menu: PackedScene = preload("res://src/Menu/MainMenu.tscn")
var dialogue_scene: PackedScene = preload("res://src/Scene/DialogueScene.tscn")
var credits: PackedScene = preload("res://src/Scene/TextScroll.tscn")
var title_card: PackedScene = preload("res://src/Scene/TitleCard.tscn")
var ending_background = preload("res://assets/backgrounds/cherry-grey-min.jpg")
var good_ending_background = preload("res://assets/backgrounds/cherry-min.jpg")

func load_player_data() -> void:
	var save_game = File.new()
	if not save_game.file_exists("user://lent.save"):
		return # Error! We don't have a save to load.
	save_game.open("user://lent.save", File.READ)
	completed_scenes = parse_json(save_game.get_line())
	music_db = parse_json(save_game.get_line())
	sound_db = parse_json(save_game.get_line())
	save_game.close()

func save_player_data() -> void:
	var save_game = File.new()
	save_game.open("user://lent.save", File.WRITE)
	save_game.store_line(to_json(completed_scenes))
	save_game.store_line(to_json(music_db))
	save_game.store_line(to_json(sound_db))
	save_game.close()
