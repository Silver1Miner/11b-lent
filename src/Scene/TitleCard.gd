extends Control

func _ready() -> void:
	if PlayerData.current_scene in TextData.title_scenes:
		$ActNumber.text = TextData.title_scenes[PlayerData.current_scene][0]
		$ActTitle.text = TextData.title_scenes[PlayerData.current_scene][1]

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("left_click"):
		$TransitionScene.transition_to(PlayerData.dialogue_scene)
	elif event.is_action_pressed("ui_cancel") or event.is_action_pressed("right_click"):
		$TransitionScene.transition_to(PlayerData.dialogue_scene)
