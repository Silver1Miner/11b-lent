extends ColorRect

onready var _animation = $AnimationPlayer
signal transition_half_finished()
signal transition_finished()

func _ready() -> void:
	_animation.play_backwards("Fade")
	yield(_animation, "animation_finished")
	emit_signal("transition_finished")

func transition_to(_next_scene) -> void:
	_animation.play("Fade")
	yield(_animation, "animation_finished")
	if get_tree().change_scene_to(_next_scene) != OK:
		push_error("fail to change scene")

func play_transition() -> void:
	_animation.play("Fade")
	yield(_animation, "animation_finished")
	emit_signal("transition_half_finished")
	_animation.play_backwards("Fade")
	yield(_animation, "animation_finished")
	emit_signal("transition_finished")
