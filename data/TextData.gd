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
	22: 25, 23: 26
}
var endings := [5, 24, 25, 26] # credits play after scene
var title_scenes := { # title card plays before scene
	1: ["Act I", "Ashes"],
	5: ["Act II", "Passion"],
	6: ["Act II", "Passion"],
	18: ["Act III", "Anastasis"],
	19: ["Act III", "Anastasis"]
}

var act1: Resource = preload("res://data/act1.tres")
var act2: Resource = preload("res://data/act2.tres")
var act3: Resource = preload("res://data/act3.tres")
var choice_text := { # choice appears after scene
	1: act1.choice_1,
	5: ["To Scene 6","To Scene 7"],
	8: ["To Scene 9","To Scene 10"],
	12: ["To Scene 13","To Scene 14"],
	15: ["To Good End","To Neutral/Bad End"],
	18: ["To Scene 20","To Scene 21"],
	19: ["To Bad End","To Neutral End"],
}
var scenes := {
# Error result
	-1: {
"dialogue": {
"0": {"name": "Test", "profile": "test",
"text": "This is generic error return result when text is missing."},
},
"background": "res://assets/backgrounds/park-min.jpg",
"music": "res://assets/audio/In_the_Bleak_Midwinter.ogg",
	},
# Play Scenes
	0: act1.scene_0,
	1: act1.scene_1,
	2: act1.scene_2,
	3: act1.scene_3,
	4: act1.scene_4,
	5: act2.scene_5,
	24: { # Good Ending
"dialogue": {
"0": {"name": "Mark", "profile": "test",
"text": "'Hi Natalie. I know. It's been too long. I should have visited more."},
"1": {"name": "", "profile": "test",
"text": "Good Ending"},
	},
	},
	25: { # Bad Ending
"dialogue": {
"0": {"name": "Lily", "profile": "test",
"text": "'You're a creep.'"},
"1": {"name": "", "profile": "test",
"text": "Bad Ending."},
	},
	},
	26: { # Neutral Ending
"dialogue": {
"0": {"name": "Mark", "profile": "test",
"text": "I get up and leave."},
"1": {"name": "", "profile": "test",
"text": "Neutral Ending"},
	},
	},
}
