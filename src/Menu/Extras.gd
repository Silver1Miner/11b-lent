extends ColorRect

onready var _jukebox = $Jukebox/OptionButton
onready var _cg1 = $CGs/CG1
onready var _cg2 = $CGs/CG2
onready var _cg3 = $CGs/CG3
onready var _preview = $Preview

func _ready() -> void:
	_preview.visible = false
	populate_jukebox()

func _on_Close_pressed() -> void:
	visible = false

func activate() -> void:
	update_progress_bar()
	visible = true
	_cg1.disabled = not 27 in PlayerData.completed_scenes
	_cg2.disabled = not 27 in PlayerData.completed_scenes
	_cg3.disabled = not 27 in PlayerData.completed_scenes
	print(PlayerData.completed_scenes)

func populate_jukebox() -> void:
	_jukebox.clear()
	_jukebox.add_item("The Rugged Old Cross")
	_jukebox.add_item("La primavera II Largo")
	_jukebox.add_item("La primavera III Allegro pastorale")

var tracks = ["cross", "s2", "s3"]
func _on_OptionButton_item_selected(index: int) -> void:
	AudioManager.play_music(tracks[index])

func update_progress_bar() -> void:
	var scenes = PlayerData.completed_scenes.size()
	print(scenes)
	$Progress/ProgressBar.value = scenes/27.0 * 100

func _on_CG1_pressed() -> void:
	_preview.texture = preload("res://assets/backgrounds/cherry-min.jpg")
	_preview.visible = true

func _on_CG2_pressed() -> void:
	_preview.texture = preload("res://assets/backgrounds/counter.jpg")
	_preview.visible = true

func _on_CG3_pressed() -> void:
	_preview.texture = preload("res://assets/backgrounds/office.jpg")
	_preview.visible = true

func _input(event: InputEvent) -> void:
	if _preview.visible:
		if event.is_action_pressed("ui_accept") or event.is_action_pressed("left_click"):
			_preview.visible = false
		elif event.is_action_pressed("ui_end") or event.is_action_pressed("right_click"):
			_preview.visible = false
