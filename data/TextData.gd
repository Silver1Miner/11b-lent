extends Node

func get_scene(scene_id) -> Dictionary:
	if scene_id in scenes and "dialogue" in scenes[scene_id]:
		return scenes[scene_id]["dialogue"]
	return scenes[-1]["dialogue"]

func get_texture(scene_id) -> String:
	if scene_id in scenes and "background" in scenes[scene_id]:
		return scenes[scene_id]["background"]
	return scenes[-1]["background"]

func get_music(scene_id) -> String:
	if scene_id in scenes and "music" in scenes[scene_id]:
		return scenes[scene_id]["music"]
	return scenes[-1]["music"]

var profiles := {
	"lily": preload("res://assets/profiles/lily.png"),
	"lily-back": preload("res://assets/profiles/lily-back.png"),
	"old-man": preload("res://assets/profiles/oldman.png")
}

var scene_order := {
	0: 1,
	1: 2,
	2: [3, 4], # 2 leads to choice between 3 and 4
	3: 5, 4: 6,
	6: 7, 7: 8,
	8: [9, 10],
	9: 11, 10: 11, 11: 12,
	12: [13, 14],
	13: 15, 14: 15,
	15: [16, 17],
	16: 18, 17: 19,
	18: [20, 21],
	19: [22, 23],
	20: 24, 21: 24,
	22: 25, 23: 26, 26: 27
}
var endings := [5, 24, 25, 27] # credits play after scene
var title_scenes := { # title card plays before scene
	1: ["Act I", "Ash"],
	8: ["Act II", "Fasting"],
	18: ["Act III", "Passion"],
	19: ["Act III", "Passion"]
}

var act1: Resource = preload("res://data/act1.tres")
var act2: Resource = preload("res://data/act2.tres")
var act3: Resource = preload("res://data/act3.tres")
var choice_text := { # choice appears after scene
	2: act1.choice_1,
	8: act2.choice_2,
	12: act2.choice_3,
	15: act2.choice_4,
	18: act3.choice_5,
	19: act3.choice_6,
}
var scenes := {
# Error result
	-1: {
"dialogue": {
"0": {"name": "Test", "profile": "test",
"text": "This is generic error return result when text is missing."},
},
"background": "res://assets/backgrounds/room2-min.jpg",
"music": "res://assets/audio/In_the_Bleak_Midwinter.ogg",
	},
# Play Scenes
	0: act1.scene_0,1: act1.scene_1,2: act1.scene_2,
	3: act1.scene_3,4: act1.scene_4,5: act1.scene_5,
	6: act1.scene_6,7: act1.scene_7,
	8: act2.scene_8,9: act2.scene_9,10: act2.scene_10,
	11: act2.scene_11, 12: act2.scene_12, 13: act2.scene_13,
	14: act2.scene_14, 15: act2.scene_15, 16: act2.scene_16,
	17: act2.scene_17,
	18: act3.scene_18, 20: act3.scene_20, 21: act3.scene_21,
	24: act3.scene_24, # GOOD ENDING
	19: act3.scene_19,
	22: act3.scene_22, 23: act3.scene_23,
	25: act3.scene_25, # Bad Ending
	26: act3.scene_26, 27: act3.scene_27, # Neutral Ending
}
