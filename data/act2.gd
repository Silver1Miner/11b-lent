extends Resource

var scene_8 := { # to scene 9
"dialogue": {
"0": {"name": "Mark", "profile": "",
"text": "Lily is a nice enough girl."},
"1": {"name": "Mark", "profile": "",
"text": "Always sure to be polite and smile when handling customers at the front counter."},
"2": {"name": "Mark", "profile": "",
"text": "Very reliable too, it seems, from how the Old Man has been trusting her to run things all on her own."},
"3": {"name": "Mark", "profile": "",
"text": "The Old Man has been disappearing off more and more ever since. Lately it's just been me and Lily in the shop."},
"4": {"name": "Mark", "profile": "",
"text": "Speaking of which... I glance up at the clock, and right on cue, there is a knock."},
"5": {"name": "Lily", "profile": "lily",
"text": "'Hi Mark, mind if take my lunch break in here with you?'"},
"6": {"name": "Mark", "profile": "lily",
"text": "'Help yourself.'"},
"7": {"name": "Mark", "profile": "lily",
"text": "Rob almost never came to the back office, and I almost never went out from it."},
"8": {"name": "Mark", "profile": "lily",
"text": "Lily is different. She's always coming back here during her breaks, trying to make idle chat."},
"9": {"name": "Lily", "profile": "lily",
"text": "'Hey, you brought a new journal book! Filled up the old one already?'"},
"10": {"name": "Mark", "profile": "lily",
"text": "I'm genuinly surprised that she noticed."},
"11": {"name": "Mark", "profile": "lily",
"text": "'Oh, uh, yeah. Filled up the last one."},
"12": {"name": "Lily", "profile": "lily",
"text": "'What do you write about, if you don't mind me asking?'"},
"13": {"name": "Mark", "profile": "lily",
"text": "'Nothing much, just some fiction.'"},
"14": {"name": "Lily", "profile": "lily",
"text": "'You're a writer too? That's so cool!'"},
"15": {"name": "Mark", "profile": "lily",
"text": "'Oh no, I'm nothing special. It's just a way to pass the down time when there's not much work.'"},
"16": {"name": "Mark", "profile": "lily",
"text": "'The Old Man suggested it actually.'"},
"17": {"name": "Lily", "profile": "lily",
"text": "'Interesting. He suggested some hobbies to me too for when there aren't many customers at the counter.'"},
"18": {"name": "Mark", "profile": "lily",
"text": "Yeah, he's a pretty lax guy."},
"19": {"name": "Lily", "profile": "lily",
"text": "'Hmmm... The boss is a pretty interesting figure..."},
"20": {"name": "Lily", "profile": "lily",
"text": "'I'm curious to hear more about your experience with him.'"},
"21": {"name": "Lily", "profile": "lily",
"text": "'Oh, but I'm also curious about the book you're writing too!'"},
"22": {"name": "Mark", "profile": "",
"text": "'Well, I wouldn't say I'm currently writing a book.'"},
"23": {"name": "Mark", "profile": "",
"text": "'Lately I've just been writing a bunch of standalone short stories,'"},
"24": {"name": "Mark", "profile": "",
"text": "'though I do like to think of them as all happening in the same universe.'"},
"25": {"name": "Lily", "profile": "",
"text": "'That's so cool. It sounds sort of like the Fortress Terra series!'"},
"26": {"name": "Mark", "profile": "",
"text": "'You... you read the Fortress Terra series?'"},
"27": {"name": "Lily", "profile": "",
"text": "'Yeah! It's so much fun!'"},
"28": {"name": "Lily", "profile": "",
"text": "'Not only is it fun to read the individual stories, but it's also fun to try to piece them all together,"},
"29": {"name": "Lily", "profile": "",
"text": "'looking through each story and finding the references to each other, almost like solving a puzzle!'"},
"30": {"name": "Mark", "profile": "lily",
"text": "I can't help but smile."},
"31": {"name": "Mark", "profile": "lily",
"text": "Against my better judgment, I can't but feel almost fond of her."},
"32": {"name": "Lily", "profile": "lily",
"text": "'Oh, but don't let me interrupt you. I want to hear about your series.'"},
"33": {"name": "Lily", "profile": "lily",
"text": "'Or, better yet, how about you let me read them!'"},
"34": {"name": "Lily", "profile": "lily",
"text": "'I mean, only if you're willing of course."},
},
"background": "res://assets/backgrounds/office.jpg",
}
var choice_2 = ["Not willing to share","Let her read them"]

var scene_9 : = {
"dialogue": {
"0": {"name": "Mark", "profile": "lily",
"text": "'... Sorry, but they're not really ready to share quite yet...'"},
"1": {"name": "Lily", "profile": "lily",
"text": "'Oh... well, that's okay too. I know creatives like you always want to make sure we see only the best work."},
"2": {"name": "Lily", "profile": "lily",
"text": "'If you'd prefer to talk about something else, I can change the subject."},
"3": {"name": "Lily", "profile": "lily",
"text": "'Like, maybe you can share some gossip about our boss?"},
"4": {"name": "Lily", "profile": "lily",
"text": "'Obviously, you know a lot more about him than I do.'"},
"5": {"name": "Mark", "profile": "lily",
"text": "'Well, I wouldn't say I know the Old Man that well. I will say he's a good guy though.'"},
"6": {"name": "Mark", "profile": "lily",
"text": "'He really helped me when I was in a bad place in my life by giving me this job.'"},
"7": {"name": "Lily", "profile": "lily",
"text": "'Heh, that actually sounds a little like how it was with me.'"},
"8": {"name": "Lily", "profile": "lily",
"text": "'I was in a pretty tight spot when the boss offered me this job.'"},
"9": {"name": "Lily", "profile": "lily",
"text": "'It felt like such perfect timing that it was actually almost suspicious.'"},
"10": {"name": "Mark", "profile": "lily",
"text": "'The Old Man certainly is a mysterious character. Like how he's even called 'old man' without looking very old.'"},
"11": {"name": "Lily", "profile": "lily",
"text": "'Well... I have my theories...'"},
"12": {"name": "Mark", "profile": "lily",
"text": "'Oh? Do share.'"},
"13": {"name": "Lily", "profile": "lily",
"text": "'He's an alien!'"},
"14": {"name": "Lily", "profile": "lily",
"text": "'Think about it. He's always disappearing off to unexplained places.'"},
"15": {"name": "Lily", "profile": "lily",
"text": "'His office is full of astrophysics and space books.'"},
"16": {"name": "Lily", "profile": "lily",
"text": "'He's old but looks young due to wearing a young person skin suit.'"},
"17": {"name": "Lily", "profile": "lily",
"text": "'It's the only explanation!'"},
"18": {"name": "Mark", "profile": "lily",
"text": "I can't help but smile."},
"19": {"name": "Mark", "profile": "lily",
"text": "Against my better judgment, I can't but feel almost fond of her."},
},"background": "res://assets/backgrounds/office.jpg",
}

var scene_10 := {
"dialogue": {
"0": {"name": "Mark", "profile": "lily",
"text": "'Sure, I'd be willing to share.'"},
"1": {"name": "Mark", "profile": "lily",
"text": "'Always useful to get feedback, right?'"},
"2": {"name": "Lily", "profile": "lily",
"text": "'Right!'"},
"3": {"name": "Mark", "profile": "lily",
"text": "I flip through my stack of old journal books and select one."},
"4": {"name": "Mark", "profile": "lily",
"text": "'I suppose this one would be the best one to start.'"},
"5": {"name": "Lily", "profile": "lily",
"text": "'Wow, cool! Do you want me to only read it while we're both in the shop?"},
"6": {"name": "Lily", "profile": "lily",
"text": "'Or would you be willing to lend it out to me to take home?"},
"7": {"name": "Mark", "profile": "lily",
"text": "'I mean, I doubt it's that interesting that you'd want to take it home..."},
"8": {"name": "Lily", "profile": "lily",
"text": "'Eh he he, you think you already know me well enough to know my literary tastes?"},
"9": {"name": "Mark", "profile": "lily",
"text": "'Fine, you can borrow it to take home.'"},
"10": {"name": "Mark", "profile": "lily",
"text": "To my surprise, she actually clutches it to her chest like a precious treasure."},
"11": {"name": "Lily", "profile": "lily",
"text": "'Thanks Mark! I know it really means a lot that you'd trust me with this!'"},
"12": {"name": "Mark", "profile": "lily",
"text": "I decide against telling her that I digitize copies of my notebooks after writing them and thus have backups."},
"13": {"name": "Mark", "profile": "lily",
"text": "Against my better judgment, I can't but feel almost fond of her."},
},
"background": "res://assets/backgrounds/office.jpg",
}
var scene_11 := {
"dialogue": {
"0": {"name": "Mark", "profile": "",
"text": "Right on time, there is a knock on the back room door."},
"1": {"name": "Mark", "profile": "",
"text": "I have to wonder if Lily is the sort of person to knock, or if the Old Man told her to always knock."},
"2": {"name": "Lily", "profile": "",
"text": "'Hi Mark, mind if I take my lunch break in here with you?'"},
"3": {"name": "Mark", "profile": "",
"text": "'Yeah, sure, just..."},
"4": {"name": "Mark", "profile": "",
"text": "Before I can get another word in, she surprises me with a box."},
"5": {"name": "Mark", "profile": "",
"text": "'What's this?'"},
"6": {"name": "Lily", "profile": "lily",
"text": "'Your lunch, silly.'"},
"7": {"name": "Lily", "profile": "lily",
"text": "'I noticed you always just get one of those instant meals from out front.'"},
"8": {"name": "Lily", "profile": "lily",
"text": "'So I thought you might like a home-made boxed lunch for some variety!'"},
"9": {"name": "Lily", "profile": "lily",
"text": "'I mean, you don't HAVE to eat it if you don't want to...'"},
"10": {"name": "Lily", "profile": "lily",
"text": "'I was just hoping that you might...'"},
"11": {"name": "Mark", "profile": "lily",
"text": "'No, I'll eat it.'"},
"12": {"name": "Mark", "profile": "lily",
"text": "'Thanks! This... this is really nice of you.'"},
"13": {"name": "Mark", "profile": "lily",
"text": "She studies my face for a moment, as if slightly unconvinced. I quickly open the box."},
"14": {"name": "Mark", "profile": "lily",
"text": "Inside are a set of home-made sandwiches, freshly made by the look of it. I quickly take one and take a bite."},
"15": {"name": "Mark", "profile": "lily",
"text": "'Immediately, I am amazed by how fresh it is.'"},
"16": {"name": "Lily", "profile": "lily",
"text": "'Well? How do you like it?'"},
"17": {"name": "Mark", "profile": "lily",
"text": "'Did you just make this? The lettuce is moist while the bread is still dry.'"},
"18": {"name": "Lily", "profile": "lily",
"text": "'Eh he he, you caught me. I packaged it all separately this morning then put it together right before giving it.'"},
"19": {"name": "Mark", "profile": "lily",
"text": "'This bread and meat is so different too, not like anything I've had before. In a good way, of course."},
"20": {"name": "Lily", "profile": "lily",
"text": "'Eh he he, thanks. I actually baked the bread myself from scratch. The meat I roasted last night too."},
"21": {"name": "Mark", "profile": "lily",
"text": "'... Thank you. I haven't had a home-made lunch since..."},
"22": {"name": "Mark", "profile": "lily",
"text": "'...'"},
"23": {"name": "Lily", "profile": "lily",
"text": "'You don't usually cook at home?"},
"24": {"name": "Mark", "profile": "lily",
"text": "'I used to cook. But eventually I stopped. Cooking for one felt like too much of a bother."},
"25": {"name": "Lily", "profile": "lily",
"text": "'I think I know what you mean.'"},
"26": {"name": "Lily", "profile": "lily",
"text": "'I used to love cooking for my family growing up.'"},
"27": {"name": "Lily", "profile": "lily",
"text": "'But after I left home after college, cooking alone just for myself always somehow felt... wrong.'"},
"28": {"name": "Lily", "profile": "lily",
"text": "'So... I was wondering actually...'"},
"29": {"name": "Lily", "profile": "lily",
"text": "'Would it be alright if I made lunch for you in the future?'"},
"30": {"name": "Mark", "profile": "lily",
"text": "'Oh, I wouldn't want to be a bother..."},
"31": {"name": "Mark", "profile": "lily",
"text": "'It's no bother! Didn't you hear me? Cooking for one is too depressing. I want the excuse to cook more often."},
"32": {"name": "Mark", "profile": "lily",
"text": "'You have to let me pay you back for it though.'"},
"33": {"name": "Lily", "profile": "lily",
"text": "'Hmm... I know! You said you used to cook too, right?'"},
"34": {"name": "Lily", "profile": "lily",
"text": "'How about every once in a while we meet at your place and you cook us a dinner?'"},
"35": {"name": "Mark", "profile": "lily",
"text": "'...'"},
"36": {"name": "Lily", "profile": "lily",
"text": "'I mean, only if you're comfortable with that of course.'"},
"37": {"name": "Lily", "profile": "lily",
"text": "'I wouldn't want to impose or anything...'"},
"38": {"name": "Mark", "profile": "lily",
"text": "'I would be delighted to have you over for dinner sometime.'"},
},
"background": "res://assets/backgrounds/office.jpg",
}

var scene_12 := {
"dialogue": {
"0": {"name": "Mark", "profile": "",
"text": "It took much longer to clean up than I expected."},
"1": {"name": "Mark", "profile": "",
"text": "Part of it is in trying to make all the sticky note labels as inconspicuous as possible."},
"2": {"name": "Mark", "profile": "",
"text": "I briefly considered taking them down entirely, but I'd never be able to get them all in the right place after."},
"3": {"name": "Mark", "profile": "",
"text": "Thankfully, Lily seemed not to notice."},
"4": {"name": "Mark", "profile": "",
"text": "Dinner was not anything too fancy."},
"5": {"name": "Mark", "profile": "",
"text": "Feeling a bit rusty with my cooking, I decided to play it safe and stick to some reliable pasta dishes that I used to make for..."},
"6": {"name": "Lily", "profile": "lily",
"text": "'Hey Mark, I'm not bothering you by poking around your place, am I?"},
"7": {"name": "Mark", "profile": "lily",
"text": "Lily's sudden question brings me back out of my thoughts."},
"8": {"name": "Mark", "profile": "",
"text": "She must have noticed a look on my face."},
"9": {"name": "Mark", "profile": "lily",
"text": "Despite dinner being over, she is staying a bit longer to make conversation."},
"10": {"name": "Mark", "profile": "lily",
"text": "'Oh, no bother at all. I don't really have anything to hide."},
"11": {"name": "Lily", "profile": "lily",
"text": "'Really? Because it sort of looks like you tried to hide a few sticky notes.'"},
"12": {"name": "Mark", "profile": "lily",
"text": "Of course she actually noticed. Somehow I keep forgetting how perceptive she really is."},
"13": {"name": "Lily", "profile": "lily",
"text": "'And this place seems awfully big for just one person.'"},
"14": {"name": "Lily", "profile": "lily",
"text": "'I think I saw a second bedroom off to the side.'"},
"15": {"name": "Lily", "profile": "lily",
"text": "'Oh, but I'm not trying to be nosy or anything.'"},
"16": {"name": "Lily", "profile": "lily",
"text": "'You don't have to tell me anything if you don't want to."},
},
"background": "res://assets/backgrounds/room2-min.jpg",
}

var choice_3 = ["Explain other bedroom", "Explain sticky notes"]
var scene_13 := {
"dialogue": {
"0": {"name": "Mark", "profile": "lily",
"text": "The other bedroom was my sister's room."},
"1": {"name": "Mark", "profile": "lily",
"text": "She... passed away."},
"2": {"name": "Lily", "profile": "lily",
"text": "'Oh... I'm sorry.'"},
"3": {"name": "Mark", "profile": "lily",
"text": "'It was a long time ago.'"},
"4": {"name": "Mark", "profile": "lily",
"text": "'...'"},
"5": {"name": "Lily", "profile": "lily",
"text": "'Would you like me to change the subject?'"},
"6": {"name": "Mark", "profile": "lily",
"text": "'It's quite alright.'"},
"7": {"name": "Mark", "profile": "lily",
"text": "We make some more idle chit-chat afterwards, but the mood clearly changed."},
"8": {"name": "Mark", "profile": "",
"text": "Eventually the evening draws to a close."},
"9": {"name": "Mark", "profile": "",
"text": "Lily takes her leave with promises that she'll have an extra special lunch tomorrow to pay me back for tonight."},
"10": {"name": "Mark", "profile": "",
"text": "I don't bother trying to argue that the dinner was to pay her back for her lunches."},
},
"background": "res://assets/backgrounds/room2-min.jpg",
}
var scene_14 := {
"dialogue": {
"0": {"name": "Mark", "profile": "lily",
"text": "'There are labels everywhere because I'm color blind.'"},
"1": {"name": "Mark", "profile": "lily",
"text": "'More specifically, I have achromatopsia. I can't see anything but gray.'"},
"2": {"name": "Lily", "profile": "lily",
"text": "'Oh. I'm sorry.'"},
"3": {"name": "Mark", "profile": "lily",
"text": "'I could see color before then, and the onset was gradual.'"},
"4": {"name": "Mark", "profile": "lily",
"text": "'When I was first diagnosed, the doctors said it might be transient and reversible, since I had no obvious traumas or injuries.'"},
"5": {"name": "Mark", "profile": "lily",
"text": "'So they suggested some exercises to try to restore my color vision.'"},
"6": {"name": "Mark", "profile": "lily",
"text": "'As part of that, I started wrote notes on what color everything was, before it all went completely away.'"},
"7": {"name": "Mark", "profile": "lily",
"text": "'But uh... I still have a little hope, so I keep the notes around...'"},
"8": {"name": "Mark", "profile": "lily",
"text": "'...'"},
"9": {"name": "Lily", "profile": "lily",
"text": "'Would you like me to change the subject?'"},
"10": {"name": "Mark", "profile": "lily",
"text": "'It's quite alright.'"},
"11": {"name": "Mark", "profile": "lily",
"text": "We make some more idle chit-chat afterwards, but the mood clearly changed."},
"12": {"name": "Mark", "profile": "",
"text": "Eventually the evening draws to a close."},
"13": {"name": "Mark", "profile": "",
"text": "Lily takes her leave with promises that she'll have an extra special lunch tomorrow to pay me back for tonight."},
"14": {"name": "Mark", "profile": "",
"text": "I don't bother trying to argue that the dinner was to pay her back for her lunches."},
},
"background": "res://assets/backgrounds/room2-min.jpg",
}
var scene_15 := {
"dialogue": {
"0": {"name": "Mark", "profile": "lily",
"text": "Lily does indeed make a special lunch the next day,"},
"1": {"name": "Mark", "profile": "lily",
"text": "'special sandwiches which I'd previously admitted are my favorite after some grilling.'"},
"2": {"name": "Mark", "profile": "lily",
"text": "After some of the usual pleasantries, the conversation trails off for a bit."},
"3": {"name": "Mark", "profile": "lily",
"text": "She seems to hesitate for a moment, as if working up the courage to say something."},
"4": {"name": "Lily", "profile": "lily",
"text": "'Hey, thanks for opening up to me yesterday.'"},
"5": {"name": "Lily", "profile": "lily",
"text": "'I feel like I should open up a little too, so it'd be fair.'"},
"6": {"name": "Mark", "profile": "lily",
"text": "'Oh, you shouldn't feel obligated.'"},
"7": {"name": "Lily", "profile": "lily",
"text": "'No, this isn't out of obligation.'"},
"8": {"name": "Lily", "profile": "lily",
"text": "'This is actually something that has been bugging me for a while.'"},
"9": {"name": "Lily", "profile": "lily",
"text": "'You know, it's funny. Remember way back when I turned in that packet with you?'"},
"10": {"name": "Lily", "profile": "lily",
"text": "'That day, I was actually considering turning down the job.'"},
"11": {"name": "Lily", "profile": "lily",
"text": "'But then you showed up, and were nice enough to help me.'"},
"12": {"name": "Lily", "profile": "lily",
"text": "'And I thought, hey, maybe it wouldn't be too bad to work here after all.'"},
"13": {"name": "Lily", "profile": "lily",
"text": "'Anyways, you know how I'm a sucker for romance stories, right?"},
"14": {"name": "Mark", "profile": "lily",
"text": "'Indeed, you make it quite clear whenever we talk about the romances in Fortress Terra.'"},
"15": {"name": "Lily", "profile": "lily",
"text": "'Eh he he, I guess I do.'"},
"16": {"name": "Lily", "profile": "lily",
"text": "'The thing is though, I've never actually had a boyfriend before.'"},
"17": {"name": "Lily", "profile": "lily",
"text": "'The only romance I've ever really known all come from books and stuff.'"},
"18": {"name": "Lily", "profile": "lily",
"text": "'So I don't really know what I'm supposed to do when it comes to romance.'"},
"19": {"name": "Lily", "profile": "lily",
"text": "'Before I moved here, there was this boy I really liked in college.'"},
"20": {"name": "Lily", "profile": "lily",
"text": "'But I was always afraid, you know, because of being all inexperienced.'"},
"21": {"name": "Lily", "profile": "lily",
"text": "'And I thought it was one-sided, so I never said anything about it.'"},
"22": {"name": "Lily", "profile": "lily",
"text": "'But a few days ago, he called me and told me that he loved me.'"},
"23": {"name": "Lily", "profile": "lily",
"text": "'Eh he he, crazy right?'"},
"24": {"name": "Lily", "profile": "lily",
"text": "'Like, why wait until after we both graduated and moved to different places?'"},
"25": {"name": "Lily", "profile": "lily",
"text": "'People always say that long distance just doesn't work.'"},
"26": {"name": "Lily", "profile": "lily",
"text": "'But I always really, really liked him.'"},
"27": {"name": "Lily", "profile": "lily",
"text": "'Mark, what do you think I should do?'"},
"28": {"name": "Mark", "profile": "lily", "desaturate_profile": true,
"text": "'...'"},
"29": {"name": "Mark", "profile": "lily",
"text": "'...'"},
"30": {"name": "Lily", "profile": "lily",
"text": "'Mark?'"},
"31": {"name": "Mark", "profile": "lily",
"text": "'Sorry, I was just thinking a bit about how to phrase it.'"},
"32": {"name": "Mark", "profile": "lily",
"text": "'I think...'"},
},
"background": "res://assets/backgrounds/office.jpg",
}

var choice_4 = ["Encourage her to make it work","Persuade her against it."]
var scene_16 := {
"dialogue": {
"0": {"name": "Mark", "profile": "lily",
"text": "'I think it's obvious what you should do.'"},
"1": {"name": "Mark", "profile": "lily",
"text": "'Long distance almost never works.'"},
"2": {"name": "Mark", "profile": "lily",
"text": "'But aren't all the best romance stories about overcoming those challenges with your partner?'"},
"3": {"name": "Mark", "profile": "lily",
"text": "'The two of you together against the world,'"},
"4": {"name": "Mark", "profile": "lily",
"text": "'against the very concepts of time and space, even.'"},
"5": {"name": "Mark", "profile": "lily",
"text": "'What could be more romantic than that?'"},
"6": {"name": "Lily", "profile": "lily",
"text": "'Eh he he, when you put it like that...'"},
"7": {"name": "Lily", "profile": "lily",
"text": "'Thanks, Mark. You're right.'"},
"8": {"name": "Lily", "profile": "lily",
"text": "'It feels like I can tell you anything.'"},
"9": {"name": "Lily", "profile": "lily",
"text": "'It's like you're the cool big brother I never had.'"},
"10": {"name": "Mark", "profile": "lily",
"text": "'...'"},
"11": {"name": "Mark", "profile": "lily",
"text": "'...'"},
},
"background": "res://assets/backgrounds/office.jpg",
}
var scene_17 := {
"dialogue": {
"0": {"name": "Mark", "profile": "lily",
"text": "'I think it's obvious what you should do.'"},
"1": {"name": "Mark", "profile": "lily",
"text": "'Long distance almost never works.'"},
"2": {"name": "Mark", "profile": "lily",
"text": "'I know it's tough, but sometimes there are chances in life that we just miss."},
"3": {"name": "Mark", "profile": "lily",
"text": "'There are a lot of things I missed out on,'"},
"4": {"name": "Mark", "profile": "lily",
"text": "'a lot of dumb mistakes I wish I could take back too,'"},
"5": {"name": "Mark", "profile": "lily",
"text": "'but I can't. We can't go back."},
"6": {"name": "Lily", "profile": "lily",
"text": "'Hmm... when you put it like that...'"},
"7": {"name": "Lily", "profile": "lily",
"text": "'Thanks, Mark. You're right."},
"8": {"name": "Lily", "profile": "lily",
"text": "'It feels like I can tell you anything.'"},
"9": {"name": "Lily", "profile": "lily",
"text": "'It's like you're the cool big brother I never had.'"},
"10": {"name": "Mark", "profile": "lily",
"text": "'...'"},
"11": {"name": "Mark", "profile": "lily",
"text": "'...'"},
},
"background": "res://assets/backgrounds/office.jpg",
}
