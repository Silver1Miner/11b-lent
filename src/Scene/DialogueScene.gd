extends Control

onready var textbox = $Textbox
onready var choice = $Choice

func _ready() -> void:
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")
	if choice.connect("choice_made", self, "_on_choice_made") != OK:
		push_error("UI signal connect fail")
	choice.visible = false
	yield($TransitionScene, "transition_finished")
	$Textbox.play_dialogue(TextData.get_scene(PlayerData.current_scene))

func play_scene(is_fade: bool) -> void:
	#$Background.set_texture(load(text_data.get_texture(PlayerData.next_scene)))
	#if text_data.get_music(PlayerData.next_scene) != "res://assets/Audio/In_the_Bleak_Midwinter.ogg":
	#	AudioManager.play_music(text_data.get_music(PlayerData.next_scene))
	if is_fade:
		$TransitionScene.play_transition()
		yield($TransitionScene, "transition_finished")
	$Textbox.play_dialogue(TextData.get_scene(PlayerData.current_scene))

func _on_text_finished() -> void:
	print("finished")
	if TextData.scene_order[PlayerData.current_scene] is Array:
		$Choice.populate_choices(TextData.choice_text[PlayerData.current_scene])
		$Choice.activate()
	elif TextData.scene_order[PlayerData.current_scene] is int:
		if TextData.scene_order[PlayerData.current_scene] >= 30: # ending
			$TransitionScene.transition_to(PlayerData.credits)
		else:
			PlayerData.current_scene = TextData.scene_order[PlayerData.current_scene]
			play_scene(true)
	else:
		push_error("invalid data")
	

func _on_choice_made(decision) -> void:
	print(decision)
	PlayerData.current_scene = TextData.scene_order[PlayerData.current_scene][decision]
	play_scene(false)
