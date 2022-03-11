extends Resource

var scene_0 = { # to scene 1
"dialogue": {
"0": {"name": "Mark",
"text": "Achromatopsia. The total inability to see color."},
"1": {"name": "Mark",
"text": "Usually caused by damage to the thalamus or the cerebral cortex."},
"2": {"name": "Mark",
"text": "But I didn't suffer any traumatic injury."},
"3": {"name": "Mark",
"text": "At least, not a physical one."},
"4": {"name": "Mark",
"text": "The onset was gradual. It started on Christmas a few years ago."},
"5": {"name": "Mark",
"text": "The colors slowly faded, until all that was left was gray."},
},
}
var scene_1 = { # to scene 2
"dialogue": {
"0": {"name": "Mark",
"text": "What do you do when you've lost your purpose for living?"},
"1": {"name": "Mark",
"text": "Find a new purpose, of course."},
"2": {"name": "Mark",
"text": "I still haven't really found my purpose yet."},
"3": {"name": "Mark", "profile": "",
"text": "At the very least, I've found several things that are most definitely not my purpose."},
"4": {"name": "Mark", "profile": "",
"text": "Such as my current day job doing IT Support for a small shop."},
"5": {"name": "Mark", "profile": "",
"text": "It's not a bad job or anything. Pays well. Very low stress. Nice enough boss."},
"6": {"name": "Mark", "profile": "",
"text": "For some people, it'd be a dream job."},
"7": {"name": "Mark", "profile": "",
"text": "But for me at least, the idea of a job becoming my life's purpose feels wrong."},
"8": {"name": "Mark", "profile": "",
"text": "A knock on the door. The boss is so nice that he knocks on the door to the back room of his own shop."},
"9": {"name": "Old Man", "profile": "",
"text": "'Hey Mark, sorry to bother to you, but can you do me a quick favor?'"},
"10": {"name": "Mark", "profile": "",
"text": "'Sure, what do you need?'"},
"11": {"name": "Old Man", "profile": "",
"text": "'Can you watch the front counter for a few minutes? Rob is out today, and I need to do a quick errand.'"},
"12": {"name": "Mark", "profile": "",
"text": "'Uh...'"},
"13": {"name": "Old Man", "profile": "",
"text": "'Oh, don't worry, I'm not asking you to actually try to run the counter.'"},
"14": {"name": "Old Man", "profile": "",
"text": "'I put up a sign saying the counter's closed. I just want you to stand out there and keep an eye on things.'"},
"15": {"name": "Old Man", "profile": "",
"text": "'Make sure there are no thieves or anything. It's really just for my own peace of mind.'"},
"16": {"name": "Mark", "profile": "",
"text": "'Sure, I can do that, boss.'"},
"17": {"name": "Old Man", "profile": "",
"text": "'Great! I'll be back soon.'"},
},
}
var choice_1 = ["Continue","To Poor End"]
var scene_2 = { # Help, continue game, to scene 4
"dialogue": {
"0": {"name": "Mark", "profile": "test",
"text": ""},
},
}
var scene_3 = { # Refuse to help, leads to Poor End
"dialogue": {
"0": {"name": "Mark", "profile": "test",
"text": "."},
"1": {"name": "",
"text": "POOR END"},
},
}
var scene_4 = { 
"dialogue": {
"0": {"name": "Mark", "profile": "test",
"text": "."},
},
}
