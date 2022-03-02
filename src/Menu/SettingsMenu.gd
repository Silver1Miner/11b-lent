extends ColorRect

func _ready() -> void:
	visible = false
	$VolumeControls/MusicVolume.set_value(PlayerData.music_db)
	$VolumeControls/SoundVolume.set_value(PlayerData.sound_db)

func _on_Back_pressed() -> void:
	visible = false

func _on_MusicVolume_value_changed(value: float) -> void:
	PlayerData.music_db = value
	AudioServer.set_bus_volume_db(
		AudioServer.get_bus_index("Music"), linear2db(value)
	)

func _on_SoundVolume_value_changed(value: float) -> void:
	PlayerData.sound_db = value
	AudioServer.set_bus_volume_db(
		AudioServer.get_bus_index("Sound"), linear2db(value)
	)

func _on_FullCredits_pressed() -> void:
	if get_tree().change_scene_to(PlayerData.credits) != OK:
		push_error("fail to change scene")
