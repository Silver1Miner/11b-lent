extends ColorRect

signal choice_made(choice)

func activate() -> void:
	visible = true
	$Options/Option1.grab_focus()

func populate_choices(input: Array) -> void:
	$Options/Option1.text = input[0]
	$Options/Option2.text = input[1]

func _on_Option1_pressed() -> void:
	emit_signal("choice_made", 0)
	visible = false

func _on_Option2_pressed() -> void:
	emit_signal("choice_made", 1)
	visible = false
