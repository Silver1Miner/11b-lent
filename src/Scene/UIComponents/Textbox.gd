extends Control

signal text_finished()
signal change_background(background)
signal saturate_background()
var page = "0"
var text_playing = true
var dialogue = {}
var active := true
onready var nametag = $Panels/Center/Name
onready var text = $Panels/Center/Speech
onready var avatar = $LeftProfile
var text_dialogue = {
	"0": {"name": "Test", "profile": "test",
	"text": "Placeholder"},
	"1": {"name": "Test", "profile": "test",
	"text": "The quick brown fox"},
	"2": {"name": "Test", "profile": "test",
	"text": "jumps over the lazy dog"},
}

func _ready() -> void:
	if PlayerData.current_scene > 15 or (PlayerData.current_scene == 15 and PlayerData.current_line >= 28):
		$LeftProfile.material.set_shader_param("saturation", 0.0)
	else:
		$LeftProfile.material.set_shader_param("saturation", 1.0)
	$Timer.wait_time = PlayerData.text_delay
	$Timer.autostart = true
	if $Timer.connect("timeout", self, "_on_timer_timeout") != OK:
		push_error("timer connect fail")
	#play_dialogue(text_dialogue, 1)

func play_dialogue(text_data, start_line = 0) -> void:
	visible = true
	$Panels/Right/TextOptions.visible = true
	$Panels/Center.color = Color(0,0,0,200.0/255)
	$Panels/Left.color = Color(0,0,0,200.0/255)
	$Panels/Right.color = Color(0,0,0,200.0/255)
	$Timer.start()
	dialogue = text_data
	page = str(start_line)
	text.set_text(dialogue[page]["text"])
	nametag.set_text(dialogue[page]["name"])
	if "profile" in dialogue[page] and dialogue[page]["profile"] in TextData.profiles:
		avatar.set_texture(TextData.profiles[dialogue[page]["profile"]])
	else:
		avatar.texture = null
	if "background" in dialogue[page]:
		emit_signal("change_background", dialogue[page]["background"])
	text.set_visible_characters(0)
	set_process_input(true)

func _on_next() -> void:
	$Timer.wait_time = PlayerData.text_delay
	if text_playing:
		if text.get_visible_characters() > text.get_total_character_count():
			if int(page) < dialogue.size() - 1:
				page = str(int(page) + 1)
				PlayerData.current_line = int(page)
				text.set_text(dialogue[page]["text"])
				nametag.set_text(dialogue[page]["name"])
				if "profile" in dialogue[page] and dialogue[page]["profile"] in TextData.profiles:
					avatar.set_texture(TextData.profiles[dialogue[page]["profile"]])
				else:
					avatar.texture = null
				if "background" in dialogue[page]:
					emit_signal("change_background", dialogue[page]["background"])
				if "desaturate_profile" in dialogue[page]:
					print("desaturate")
					$LeftProfile/AnimationPlayer.play("Desaturate")
				if "saturate_background" in dialogue[page]:
					emit_signal("saturate_background")
				text.set_visible_characters(0)
			elif int(page) >= dialogue.size() - 1:
				end_text()
		else:
			text.set_visible_characters(text.get_total_character_count())

func _unhandled_input(event) -> void:
	if active:
		get_tree().set_input_as_handled()
		if event.is_action_pressed("ui_accept") or event.is_action_pressed("left_click"):
			_on_next()
		elif event.is_action_pressed("ui_end") or event.is_action_pressed("right_click"):
			end_text()

func end_text() -> void:
	nametag.text = ""
	text.text = ""
	$Panels/Right/TextOptions.visible = false
	emit_signal("text_finished")

func _on_timer_timeout() -> void:
	text.set_visible_characters(text.get_visible_characters()+1)

func _on_next_pressed() -> void:
	_on_next()

func _on_skip_pressed() -> void:
	end_text()
