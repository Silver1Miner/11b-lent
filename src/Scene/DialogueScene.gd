extends Control

onready var textbox = $Textbox
onready var choice = $Choice

func _ready() -> void:
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")
	if textbox.connect("change_background", self, "_on_change_background") != OK:
		push_error("UI signal connect fail")
	if textbox.connect("saturate_background", self, "_on_saturate_background") != OK:
		push_error("UI signal connect fail")
	if choice.connect("choice_made", self, "_on_choice_made") != OK:
		push_error("UI signal connect fail")
	choice.visible = false
	#yield($TransitionScene, "transition_finished")
	#$Textbox.play_dialogue(TextData.get_scene(PlayerData.current_scene), PlayerData.current_line)
	play_scene(false)

func play_scene(is_fade: bool) -> void:
	if not PlayerData.current_scene in PlayerData.completed_scenes:
		PlayerData.completed_scenes.append(PlayerData.current_scene)
		PlayerData.save_player_data()
	$Textbox.active = true
	if TextData.get_music(PlayerData.current_scene) != "res://assets/audio/The_Old_Rugged_Cross.ogg":
		AudioManager.play_music(TextData.get_music(PlayerData.current_scene))
	if is_fade:
		$TransitionScene.play_transition()
		yield($TransitionScene, "transition_half_finished")
	$Textbox/LeftProfile.texture = null
	$Background.set_texture(load(TextData.get_texture(PlayerData.current_scene)))
	if is_fade:
		yield($TransitionScene, "transition_finished")
	$Textbox.play_dialogue(TextData.get_scene(PlayerData.current_scene), PlayerData.current_line)

func _on_change_background(background) -> void:
	$Background.set_texture(load(background))

func _on_saturate_background() -> void:
	$Background/AnimationPlayer.play("Saturate")

func _on_text_finished() -> void:
	print("finished ", PlayerData.current_scene)
	PlayerData.current_line = 0
	if PlayerData.current_scene in TextData.endings:
		$TransitionScene.transition_to(PlayerData.credits)
	elif TextData.scene_order[PlayerData.current_scene] is Array:
		$Choice.populate_choices(TextData.choice_text[PlayerData.current_scene])
		$Choice.activate()
		$Textbox.active = false
	elif TextData.scene_order[PlayerData.current_scene] is int:
		PlayerData.current_scene = TextData.scene_order[PlayerData.current_scene]
		if PlayerData.current_scene in TextData.title_scenes:
			$TransitionScene.transition_to(PlayerData.title_card)
		else:
			play_scene(true)
	else:
		push_error("invalid data")

func _on_choice_made(decision) -> void:
	print(decision)
	PlayerData.current_scene = TextData.scene_order[PlayerData.current_scene][decision]
	play_scene(false)
