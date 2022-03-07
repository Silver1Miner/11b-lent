extends Node

func get_scene(scene_id) -> Dictionary:
	if scene_id in scenes:
		return scenes[scene_id]
	return scenes[0]

func get_texture(scene_id) -> String:
	if scene_id in scene_backgrounds:
		return scene_backgrounds[backgrounds[scene_id]]
	return backgrounds[0]

func get_music(scene_id) -> String:
	if scene_id in scene_music:
		return scene_music[music_tracks[scene_id]]
	return music_tracks[0]

var backgrounds := {
	0: "res://assets/backgrounds/park-min.jpg", # error placeholder
}

var music_tracks := {
	0: "res://assets/audio/In_the_Bleak_Midwinter.ogg",
}

var scene_order := {
	0: 1,
	1: 2, # 1 leads to 2
	2: [3, 4], # 2 leads to choice between 3 and 4
	3: 5,
	4: 5,
	5: 30,
}

var scene_backgrounds := {
	0: 0,
	1: 0,
}

var scene_music := {
	0: 0,
	1: 0
}

var title_scenes := {
	1: ["Act I", "Ashes"],
	5: ["Act II", "Passion"],
	7: ["Act III", "Good"]
}

var choice_text := {
	2: [
		"Choice A",
		"Choice B",
	],
}

var scenes := {
# Error result
	-1: {
"0": {"name": "Test", "profile": "test",
"text": "This is generic error return result"},
"1": {"name": "Test", "profile": "test",
"text": "It appears when text is missing. Sorry about that."},
	},
# Play Scenes
	0: {
"0": {"name": "Mark", "profile": "test",
"text": "Achromatopsia. The total inability to see color."},
"1": {"name": "Mark", "profile": "test",
"text": "Usually it is caused by damage to the thalamus or the cerebral cortex."},
"2": {"name": "Mark", "profile": "test",
"text": "This is scene 0."},
	},
	1: {
"0": {"name": "Mark", "profile": "test",
"text": "This is scene 1."},
	},
	2: {
"0": {"name": "Mark", "profile": "test",
"text": "This is scene 2."},
"1": {"name": "Mark", "profile": "test",
"text": "Choose an option."},
"2": {"name": "Mark", "profile": "test",
"text": "What should I do?"},
	},
	3: {
"0": {"name": "Mark", "profile": "test",
"text": "You chose choice A."},
	},
	4: {
"0": {"name": "Mark", "profile": "test",
"text": "You chose choice B."},
	},
	5: {
"0": {"name": "Mark", "profile": "test",
"text": "This is scene 5."},
"1": {"name": "Mark", "profile": "test",
"text": "What will happen now?"},
	},
# Ending Scenes
	30: { # Placeholder Ending
"0": {"name": "Mark", "profile": "test",
"text": "I have no idea how you got here, but this is the error message ending."},
"1": {"name": "", "profile": "test",
"text": "ERROR Ending"},
	},
	31: { # Good Ending
"0": {"name": "Mark", "profile": "test",
"text": "'Hi Natalie. I know. It's been too long. I should have visited more."},
"1": {"name": "", "profile": "test",
"text": "Good Ending"},
	},
	32: { # Neutral Ending
"0": {"name": "Mark", "profile": "test",
"text": "'Hi Natalie. I know. It's been too long."},
"1": {"name": "", "profile": "test",
"text": "Neutral Ending."},
	},
	33: { # Bad Ending
"0": {"name": "Mark", "profile": "test",
"text": "'Hi Natalie. I know. It's been too long."},
"1": {"name": "", "profile": "test",
"text": "Bad Ending"},
	},
}
