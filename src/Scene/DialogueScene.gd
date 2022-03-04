extends Control

#var text_data: Resource = preload("res://data/text_data.tres")
onready var textbox = $Textbox
onready var choice = $Choice

func _ready() -> void:
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")
	if textbox.connect("choice_made", self, "_on_choice_made") != OK:
		push_error("UI signal connect fail")
	#$Background.set_texture(load(text_data.get_texture(PlayerData.next_scene)))
	#$Textbox.play_dialogue(text_data.get_scene(PlayerData.next_scene))
	#if text_data.get_music(PlayerData.next_scene) != "res://assets/Audio/In_the_Bleak_Midwinter.ogg":
	#	AudioManager.play_music(text_data.get_music(PlayerData.next_scene))

func _on_text_finished() -> void:
	print("finished")
	#$TransitionScene.transition_to(PlayerData.credits)

func _on_choice_made(decision) -> void:
	print(decision)
