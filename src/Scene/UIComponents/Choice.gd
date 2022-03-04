extends VBoxContainer

signal choice_made(choice)

func populate_question(input: String) -> void:
	Label.text = input

func populate_choices(input1: String, input2: String) -> void:
	$Options/Option1.text = input1
	$Options/Option2.text = input2

func _on_Option1_pressed() -> void:
	emit_signal("choice_made", 0)
	visible = false

func _on_Option2_pressed() -> void:
	emit_signal("choice_made", 1)
	visible = false
