extends Node

func get_scene(id) -> Dictionary:
	if id in scenes:
		return scenes[id]
	return scenes[0]

func get_texture(id) -> String:
	if id in backgrounds:
		return backgrounds[id]
	return backgrounds[0]

func get_music(id) -> String:
	if id in music_tracks:
		return music_tracks[id]
	return music_tracks[0]

var backgrounds := {
	0: "res://assets/backgrounds/street.jpg", # error placeholder
}

var music_tracks := {
	0: "res://assets/audio/In_the_Bleak_Midwinter.ogg",
}

var scene_order := {
	1: 2, # 1 leads to 2
	2: [3, 4], # 2 leads to choice
	3: 5,
	4: 5,
}

var choice_text := {
	2: [
		"",
		"",
	]
}

var scenes := {
# Error result
	0: {
"0": {"name": "Test", "profile": "test",
"text": "This is generic error return result"},
"1": {"name": "Test", "profile": "test",
"text": "It appears when text is missing. Sorry about that."},
	},
# Play Scenes
	1: {
"0": {"name": "Mark", "profile": "test",
"text": "Achromatopsia. The total inability to see color."},
"1": {"name": "Mark", "profile": "test",
"text": "Usually it is caused by damage to the thalamus or the cerebral cortex."},
"2": {"name": "Mark", "profile": "test",
"text": "."},
	},
# Ending Scenes
	20: { # Good Ending
"0": {"name": "Mark", "profile": "test",
"text": "'Hi Natalie. I know. It's been too long. I should have visited more."},
"1": {"name": "", "profile": "test",
"text": "Good Ending"},
	},
	21: { # Neutral Ending
"0": {"name": "Mark", "profile": "test",
"text": "'Hi Natalie. I know. It's been too long."},
"1": {"name": "", "profile": "test",
"text": "Neutral Ending."},
	},
	22: { # Bad Ending
"0": {"name": "Mark", "profile": "test",
"text": "'Hi Natalie. I know. It's been too long."},
"1": {"name": "", "profile": "test",
"text": "Bad Ending"},
	},
}
