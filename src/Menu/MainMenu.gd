extends Control

func _ready() -> void:
	PlayerData.load_player_data()
	AudioManager.play_music("res://assets/audio/In_the_Bleak_Midwinter.ogg", 0)
	if OS.get_name() == "HTML5":
		$Options/Quit.visible = false
	$Options/New.grab_focus()

func _on_New_pressed() -> void:
	PlayerData.new_game = true
	PlayerData.current_scene = 0
	PlayerData.current_line = 0
	if get_tree().change_scene_to(PlayerData.dialogue_scene) != OK:
		push_error("fail to change scene")

func _on_Load_pressed() -> void:
	$SaveMenu.visible = true

func _on_Settings_pressed() -> void:
	$SettingsMenu.visible = true

func _on_Quit_pressed() -> void:
	get_tree().quit()

func _on_New_mouse_entered() -> void:
	$Options/New.grab_focus()

func _on_Load_mouse_entered() -> void:
	$Options/Load.grab_focus()

func _on_Settings_mouse_entered() -> void:
	$Options/Settings.grab_focus()

func _on_Quit_mouse_entered() -> void:
	$Options/Quit.grab_focus()

func _on_Extras_mouse_entered() -> void:
	$Options/Extras.grab_focus()

func _on_Extras_pressed() -> void:
	$Extras.visible = true
