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
"text": "The onset was gradual. It started on a Christmas many years ago."},
"5": {"name": "Mark",
"text": "The colors slowly faded over the next spring, until all that was left was gray."},
},
"background": "res://assets/backgrounds/room2-min.jpg",
"music": "res://assets/audio/The_Old_Rugged_Cross.ogg",
}
var scene_1 = { # to scene 2
"dialogue": {
"0": {"name": "Mark",
"text": "What do you do when you've lost your purpose for living?"},
"1": {"name": "Mark",
"text": "... Find a new purpose, of course."},
"2": {"name": "Mark",
"text": "Or, at least, try to. I still haven't really found a new purpose yet."},
"3": {"name": "Mark",
"text": "At the very least, I've found several things that are definitely not my purpose."},
"4": {"name": "Mark",
"text": "Such as my current day job. I do basic clerical work for a small shop in their back room office."},
"5": {"name": "Mark",
"text": "It's not a bad job or anything. Pays well. Very low stress. Nice enough boss."},
"6": {"name": "Mark",
"text": "For some people, it'd be a dream job."},
"7": {"name": "Mark",
"text": "But for me at least, the idea of a job becoming my life's purpose feels wrong."},
"8": {"name": "Mark",
"text": "A knock on the door. The boss is so nice that he knocks on the door to the back room of his own shop."},
"9": {"name": "Old Man", "profile": "old-man",
"text": "'Hey Mark, sorry to bother to you, but can you do me a quick favor?'"},
"10": {"name": "Mark", "profile": "old-man",
"text": "'Sure, what do you need?'"},
"11": {"name": "Old Man", "profile": "old-man",
"text": "'Can you watch the front counter for a few minutes? Rob is out today, and I need to do a quick errand.'"},
"12": {"name": "Mark", "profile": "old-man",
"text": "'Uh...'"},
"13": {"name": "Old Man", "profile": "old-man",
"text": "'Oh, don't worry, I'm not asking you to actually run the counter.'"},
"14": {"name": "Old Man", "profile": "old-man",
"text": "'I put up a sign saying the counter's closed. I just want you to keep an eye on things.'"},
"15": {"name": "Old Man", "profile": "old-man",
"text": "'Make sure there is no spontaneous combustion or anything. It's really just for my own peace of mind.'"},
"16": {"name": "Mark", "profile": "old-man",
"text": "'Sure, I can do that, boss.'"},
"17": {"name": "Old Man", "profile": "old-man",
"text": "'Great! I'll be back soon.'"},
"18": {"name": "Mark",
"text": "The Old Man leaves without another word, and I dutifully step out into the front..."},
},
"background": "res://assets/backgrounds/office.jpg",
}

var scene_2 = {
"dialogue": {
"0": {"name": "Mark", "profile": "lily-back",
"text": "...to find a customer waiting at the closed front counter."},
"1": {"name": "Mark", "profile": "lily-back",
"text": "..."},
"2": {"name": "Mark", "profile": "lily-back",
"text": "I can't believe my eyes."},
"3": {"name": "Mark", "profile": "lily-back",
"text": "..."},
"4": {"name": "Mark", "profile": "lily-back",
"text": "The boss said that I just needed to keep an eye on things, that I needn't actually operate the counter."},
"5": {"name": "Mark", "profile": "lily-back",
"text": "I have no idea how to run the counter anyways."},
"6": {"name": "Mark", "profile": "lily-back",
"text": "I should just hang back."},
},
"background": "res://assets/backgrounds/counter.jpg",
}
var choice_1 = ["Hang back", "Offer to help"]
var scene_4 = { # Help, continue game, to scene 6
"dialogue": {
"0": {"name": "Mark", "profile": "lily-back",
"text": "Against my better judgment, I walk up to her."},
"1": {"name": "Mark", "profile": "lily-back",
"text": "'Hi there. Do you need any help?'"},
"2": {"name": "Girl", "profile": "lily",
"text": "'Oh, hello! Do you work here?'"},
"3": {"name": "Mark", "profile": "lily",
"text": "'Uh, technically yes. I usually work in the back though, so...'"},
"4": {"name": "Girl", "profile": "lily",
"text": "'Oh, no worries, I'm not here to buy anything.'"},
"5": {"name": "Girl", "profile": "lily",
"text": "'I just need to drop off this packet to the shop owner.'"},
"6": {"name": "Girl", "profile": "lily",
"text": "'Can I leave it with you?'"},
"7": {"name": "Mark", "profile": "lily",
"text": "'Yeah, sure, I can take it.'"},
"8": {"name": "Girl", "profile": "lily",
"text": "'Thanks!'"},
"9": {"name": "Mark", "profile": "lily",
"text": "'...'"},
"10": {"name": "Girl", "profile": "lily",
"text": "'...'"},
"11": {"name": "Girl", "profile": "lily",
"text": "'Is there something on my face?'"},
"12": {"name": "Mark", "profile": "lily",
"text": "'Oh, no, sorry, uh...'"},
"13": {"name": "Mark", "profile": "lily",
"text": "I awkwardly take the packet out of her hands."},
"14": {"name": "Girl", "profile": "lily",
"text": "'Thanks again!'"},
"15": {"name": "Mark", "profile": "lily",
"text": "She briefly glances at a small watch on her wrist."},
"16": {"name": "Girl", "profile": "lily",
"text": "'Sorry, I've got to run now, but I'll be seeing you again soon!'"},
"17": {"name": "Mark", "profile": "lily",
"text": "'Uh... yeah... '"},
"18": {"name": "Mark", "profile": "lily-back",
"text": "..."},
"19": {"name": "Mark", "profile": "",
"text": "I don't fully process what she said until after she is gone."},
"20": {"name": "Mark", "profile": "",
"text": "Did she say she'd see me again soon?"},
},
"background": "res://assets/backgrounds/counter.jpg",
}
var scene_3 = { # Refuse to help, to scene 5
"dialogue": {
"0": {"name": "Mark", "profile": "lily-back",
"text": "A strange man walking up to her would just cause her trouble."},
"1": {"name": "Mark", "profile": "lily-back",
"text": "I better just hang back and let her wait."},
"2": {"name": "Mark", "profile": "lily-back",
"text": "..."},
"3": {"name": "Mark", "profile": "lily-back",
"text": "..."},
"4": {"name": "Mark", "profile": "lily-back",
"text": "..."},
"5": {"name": "Mark", "profile": "lily-back",
"text": "She's checking her watch."},
"6": {"name": "Mark", "profile": "lily-back",
"text": "And now she's leaving."},
"7": {"name": "Mark", "profile": "",
"text": "..."},
"8": {"name": "Mark", "profile": "",
"text": "As she vanishes from view, I can't help but feel a slight twinge of regret."},
"9": {"name": "Mark", "profile": "",
"text": "What I saw couldn't have just been a strange coincidence, could it?"},
"10": {"name": "Mark", "profile": "",
"text": "Maybe I should have said something."},
},
"background": "res://assets/backgrounds/counter.jpg",
}

var scene_5 := { # to Poor ending
"dialogue": {
"0": {"name": "Mark",
"text": "None of us actually know the boss's name."},
"1": {"name": "Mark",
"text": "It's always either 'boss,' or else 'Old Man,' though he honestly does not look that old."},
"2": {"name": "Mark",
"text": "He's a strange guy, wanders around, showing up and vanishing almost at random."},
"3": {"name": "Mark",
"text": "He also has an uncanny ability to show up whenever someone talks about him."},
"4": {"name": "Old Man", "profile": "old-man",
"text": "'Hey Mark, got a minute?'"},
"5": {"name": "Mark", "profile": "old-man",
"text": "'Sure, what's up boss?'"},
"6": {"name": "Old Man", "profile": "old-man",
"text": "'Not much, I just wanted to let you know that Rob's decided to move on to better things."},
"7": {"name": "Mark", "profile": "old-man",
"text": "I feel a bit of shame as it takes me a moment to remember who Rob is."},
"8": {"name": "Mark", "profile": "old-man",
"text": "I never leave the back room if I can help it, so I never really get to know any of the counter jockeys."},
"9": {"name": "Mark", "profile": "old-man",
"text": "Though I do recall Rob being a very quiet and somewhat anti-social guy."},
"10": {"name": "Mark", "profile": "old-man",
"text": "'Oh, uh, good for Rob I guess.'"},
"11": {"name": "Old Man", "profile": "old-man",
"text": "'I was hoping to throw a little going away party, but Rob turned it down as he wanted to start his new job immediately.'"},
"12": {"name": "Mark", "profile": "old-man",
"text": "Thank you, Rob. I never really liked the Old Man's parties very much."},
"13": {"name": "Old Man", "profile": "old-man",
"text": "'Anyways, nothing will change on your end, and I'll probably find a fill for Rob's old position soon enough."},
"14": {"name": "Mark", "profile": "old-man",
"text": "'Well, thanks for keeping me updated.'"},
"15": {"name": "Old Man", "profile": "old-man",
"text": "'And thanks for the good work you do. See you around, Mark.'"},
"16": {"name": "Mark",
"text": "For a brief moment, he looks like he's about to say something more, but then stops, and leaves without a word."},
"17": {"name": "Mark",
"text": "I turn back to my desk, and watch the day go by."},
"18": {"name": "Mark",
"text": "Another day, just like all the other ones, staring at different shades of gray."},
"19": {"name": "",
"text": "POOR END"},
},
"background": "res://assets/backgrounds/office.jpg",
}

var scene_6 := { # to scene 7
"dialogue": {
"0": {"name": "Mark",
"text": "None of us actually know the boss's name."},
"1": {"name": "Mark",
"text": "It's always either 'boss,' or else 'Old Man,' though he honestly does not look that old."},
"2": {"name": "Mark",
"text": "He's a strange guy, wanders around, showing up and vanishing almost at random."},
"3": {"name": "Mark",
"text": "He also has an uncanny ability to show up whenever someone talks about him."},
"4": {"name": "Old Man", "profile": "old-man",
"text": "'Hey Mark, got a minute?'"},
"5": {"name": "Mark", "profile": "old-man",
"text": "'Sure, what's up boss?'"},
"6": {"name": "Old Man", "profile": "old-man",
"text": "'Not much, I just wanted to let you know that Rob's decided to move on to better things."},
"7": {"name": "Mark", "profile": "old-man",
"text": "I feel a bit of shame as it takes me a moment to remember who Rob is."},
"8": {"name": "Mark", "profile": "old-man",
"text": "I never leave the back room if I can help it, so I never really get to know any of the counter jockeys."},
"9": {"name": "Mark", "profile": "old-man",
"text": "Though I do recall Rob being a very quiet and somewhat anti-social guy."},
"10": {"name": "Mark", "profile": "old-man",
"text": "'Oh, uh, good for Rob I guess.'"},
"11": {"name": "Old Man", "profile": "old-man",
"text": "'I was hoping to throw a little going away party, but Rob turned it down as he wanted to start his new job immediately.'"},
"12": {"name": "Mark", "profile": "old-man",
"text": "Thank you, Rob. I never really liked attending the Old Man's 'parties.'"},
"13": {"name": "Old Man", "profile": "old-man",
"text": "'Anyways, nothing will change on your end, and I've already filled Rob's old position."},
"14": {"name": "Mark", "profile": "old-man",
"text": "'What? Already?'"},
"15": {"name": "Old Man", "profile": "old-man",
"text": "'Yeah, come on out and see the new employee.'"},
},
"background": "res://assets/backgrounds/office.jpg",
}

var scene_7 := { # to scene 8
"dialogue": {
"0": {"name": "Mark", "profile": "",
"text": "..."},
"1": {"name": "Mark", "profile": "",
"text": "No way."},
"2": {"name": "Lily", "profile": "lily",
"text": "'Hello, I'm Lily. Nice to be meeting you again.'"},
"3": {"name": "Mark", "profile": "lily",
"text": "'Hi... Uh, Mark.'"},
"4": {"name": "Lily", "profile": "lily",
"text": "'Let's work together well, Mark.'"},
},
"background": "res://assets/backgrounds/counter.jpg",
}
