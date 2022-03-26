extends ColorRect

func _ready() -> void:
	visible = false
	$VolumeControls/MusicVolume.set_value(PlayerData.music_db)
	$VolumeControls/SoundVolume.set_value(PlayerData.sound_db)
	$VolumeControls/TextDelay.set_value(PlayerData.text_delay)

func _on_Back_pressed() -> void:
	PlayerData.save_player_data()
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

func _on_TextDelay_value_changed(value: float) -> void:
	PlayerData.text_delay = value
