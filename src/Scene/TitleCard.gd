extends Control

func _ready() -> void:
	if PlayerData.current_scene in TextData.title_scenes:
		$ActNumber.text = TextData.title_scenes[PlayerData.current_scene][0]
		$ActTitle.text = TextData.title_scenes[PlayerData.current_scene][1]

func _input(event: InputEvent) -> void:
	$Timer.stop()
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("left_click"):
		$TransitionScene.transition_to(PlayerData.dialogue_scene)
	elif event.is_action_pressed("ui_end") or event.is_action_pressed("right_click"):
		$TransitionScene.transition_to(PlayerData.dialogue_scene)


func _on_Timer_timeout() -> void:
	$TransitionScene.transition_to(PlayerData.dialogue_scene)
