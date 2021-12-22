extends Resource

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
	0: "res://assets/Backgrounds/street.jpg", # error placeholder
	2: "res://assets/CG/window.png",
	3: "res://assets/CG/chess.png",
	4: "res://assets/CG/snow.png",
	5: "res://assets/CG/chocolate.png",
	7: "res://assets/CG/eve.png",
	20: "res://assets/CG/end-true.png",
	21: "res://assets/CG/end.png",
	22: "res://assets/CG/end.png",
}

var music_tracks := {
	0: "res://assets/Audio/In_the_Bleak_Midwinter.ogg",
	1: "res://assets/Audio/O_Holy_Night.ogg",
	-2: "res://assets/Audio/Carol_of_the_Bells.ogg",
	20: "res://assets/Audio/Auld_Lang_Syne.ogg",
	21: "res://assets/Audio/Advent.ogg",
	22: "res://assets/Audio/Advent.ogg"
}

var scenes := {
	# End of Day Scenes
	-1:{
"0": {"name": "", "profile": "test",
"text": "'It's gotten late. Time for bed. Did you take your medicine?'"},
"1": {"name": "Natalie", "profile": "natalie-base",
"text": "'Yes, I made sure to take my medicine.'"},
"2": {"name": "", "profile": "natalie-base",
"text": "'Good night then.'"},
"3": {"name": "Natalie", "profile": "natalie-base",
"text": "'Good night.'"},
	},
	-2:{
"0": {"name": "Natalie", "profile": "test",
"text": "'Time for bed, right?'"},
"1": {"name": "Natalie", "profile": "test",
"text": "'Oh, we're out of medicine?'"},
"2": {"name": "Natalie", "profile": "test",
"text": "'Well, I'm sure I can get by without it for today. Good night.'"},
	},
	-3:{
"0": {"name": "Natalie", "profile": "test",
"text": "'We're out of medicine again?'"},
"1": {"name": "Natalie", "profile": "test",
"text": "'I was hoping... since I've been feeling a bit...'"},
"2": {"name": "Natalie", "profile": "test",
"text": "'Ah... it's nothing. Good night.'"},
	},
# Error result
	0: {
"0": {"name": "Test", "profile": "test",
"text": "This is generic error return result"},
"1": {"name": "Test", "profile": "test",
"text": "It appears when text is missing. Sorry about that."},
	},
# Play Scenes
	1: { #Dec 18
"0": {"name": "Natalie", "profile": "test",
"text": "'Hey, did you remember what today is?'"},
"1": {"name": "", "profile": "test",
"text": "'Of course, how could I forget?'"},
"2": {"name": "", "profile": "test",
"text": "'It's Australian Christmas!'"},
"3": {"name": "", "profile": "test",
"text": "We share a little laugh."},
"4": {"name": "", "profile": "test",
"text": "Many years ago, I got into an old video game. Every year, the game would have a winter holiday event."},
"5": {"name": "", "profile": "test",
"text": "When that event first started, they called it 'Australian Christmas,' because one of the lead developers was Australian."},
"6": {"name": "", "profile": "test",
"text": "That was a long time ago, but Natalie and I still reference the name as a little reminder that Christmas is a week away."},
"7": {"name": "", "profile": "test",
"text": "After we shared our little laugh, Natalie then looked at me with a serious expression."},
"8": {"name": "Natalie", "profile": "test",
"text": "'You don't really play many video games anymore.'"},
"9": {"name": "", "profile": "test",
"text": "'I don't really have the time anymore.'"},
"10": {"name": "Natalie", "profile": "test",
"text": "'I used to have a lot of fun watching you play.'"},
"11": {"name": "", "profile": "test",
"text": "'I guess you'll have to take on the torch, and play games in my stead.'"},
"12": {"name": "Natalie", "profile": "test",
"text": "'Is that a hint as to what you got me for Christmas this year?'"},
"13": {"name": "", "profile": "test",
"text": "'Nice try. You'll just have to wait until next week.'"},
	},
	2: { #Dec 19
"0": {"name": "", "profile": "test",
"text": "That day, I found Natalie staring outside the window, watching the snow."},
"1": {"name": "", "profile": "test",
"text": "She always did love playing in the snow."},
"2": {"name": "", "profile": "test",
"text": "In her current condition though, going outside was out of the question."},
"3": {"name": "", "profile": "test",
"text": "'Hey, how about I read you a story?'"},
"4": {"name": "Natalie", "profile": "test",
"text": "'I'm too old for that.'"},
"5": {"name": "", "profile": "test",
"text": "'But I'm not. Come on, humor me a little.'"},
"6": {"name": "Natalie", "profile": "test",
"text": "'Ugh, fine.'"},
"7": {"name": "", "profile": "test",
"text": "Though she rolled her eyes, she couldn't hide the eagerness in how she snuggled up against my side."},
	},
	3: { #Dec 20
"0": {"name": "", "profile": "test",
"text": "I spent the day inside playing a board game with Natalie."},
"1": {"name": "Natalie", "profile": "test",
"text": "'It's called Three Kingdoms Chess. See, there are three different sides, so three kingdoms.'"},
"2": {"name": "", "profile": "test",
"text": "'Another three kingdoms thing?' I couldn't help but ask. Natalie got really into 'three kingdoms' stuff that year."},
"3": {"name": "Natalie", "profile": "test",
"text": "'If you got around to reading it yourself, you'd see the appeal.'"},
"4": {"name": "Natalie", "profile": "test",
"text": "'Trust me. This is definitely something you'd get into, if you'd just start.'"},
"5": {"name": "", "profile": "test",
"text": "'I'm sure I would.'"},
"6": {"name": "", "profile": "test",
"text": "Natalie briefly looked at me suspiciously, but I'm sure that my poker face held."},
"7": {"name": "", "profile": "test",
"text": "The truth is, I actually have started reading some of it. And Natalie was completely right. I am just as into it as she is."},
"8": {"name": "", "profile": "test",
"text": "But I didn't tell her right away. I already had an idea to surprise her."},
"9": {"name": "", "profile": "test",
"text": "Not for this Christmas, of course. My idea is too big to get it done that quickly."},
"10": {"name": "", "profile": "test",
"text": "Maybe for her next birthday, though."},
	},
	4: { #Dec 21
"0": {"name": "", "profile": "test",
"text": "I had a little surprise planned for Natalie."},
"1": {"name": "Natalie", "profile": "test",
"text": "'Oh! That's...!'"},
"2": {"name": "", "profile": "test",
"text": "'Going outside is a bad idea, so I thought I'd bring a little bit of the outside inside.'"},
"3": {"name": "", "profile": "test",
"text": "'Put on your gloves first, though.'"},
"4": {"name": "", "profile": "test",
"text": "It was such a simple little thing, a little basin of snow."},
"5": {"name": "", "profile": "test",
"text": "But her smile is bright if practically reflects off the snow."},
"6": {"name": "", "profile": "test",
"text": "When the snowman was finished, we put it in the freezer for safe keeping."},
	},
	5: { #Dec 22
"0": {"name": "", "profile": "test",
"text": "It was colder than usual, cold enough that we could feel it even inside."},
"1": {"name": "", "profile": "test",
"text": "That was as good an excuse as any to make some hot chocolate from scratch."},
"2": {"name": "", "profile": "test",
"text": "I kept my own plain, but for Natalie, I had all the toppings."},
"3": {"name": "", "profile": "test",
"text": "Marshmallows, whipped cream, chocolate shavings, everything."},
"4": {"name": "", "profile": "test",
"text": "She immediately smiled upon seeing it, exactly as I expected."},
"5": {"name": "", "profile": "test",
"text": "There was no fireplace to sit next to, so we contended ourselves with staring at the wall."},
"6": {"name": "", "profile": "test",
"text": "And yet somehow, sitting together with our chocolate, it felt like there was no difference."},
	},
	6: { #Dec 23
"0": {"name": "", "profile": "test",
"text": "With Christmas only two days away, it was time to bake some cookies for Santa."},
"1": {"name": "", "profile": "test",
"text": "In this, I was completely dependent on Natalie. She was the baker of the family, not me."},
"2": {"name": "", "profile": "test",
"text": "'Like this?' I asked, not so much to get actual feedback, but to show off my face."},
"3": {"name": "Natalie", "profile": "test",
"text": "'What are you doing? Get that off your face!'"},
"4": {"name": "", "profile": "test",
"text": "'Whatever do you mean?'"},
"5": {"name": "", "profile": "test",
"text": "She punched me in the arm before I could even finish."},
"6": {"name": "Natalie", "profile": "test",
"text": "'Come on, quit it. You know what I mean.'"},
"7": {"name": "", "profile": "test",
"text": "I laughed, and she couldn't help but smile in answer."},
"8": {"name": "", "profile": "test",
"text": "It was our little in-joke, one that no one else could really understand."},
	},
	7: { #Dec 24
"0": {"name": "", "profile": "test",
"text": "For Christmas Eve, I took Natalie around town to see the lights."},
"1": {"name": "", "profile": "test",
"text": "It might have been a bad idea, but the day was warmer than most, and she looked a little better than usual."},
"2": {"name": "", "profile": "test",
"text": "I made sure she was dressed as warmly as possible, and we took a very slow pace so as to not tire her out."},
"3": {"name": "", "profile": "test",
"text": "We didn't talk much, either. We just walked, hand in hand, enjoy the sights and each other's company."},
"4": {"name": "", "profile": "test",
"text": "Eventually, we took a little break in front of the big public tree in the center of town."},
"5": {"name": "", "profile": "test",
"text": "I don't remember which one of us broke the silence first, or most of what we talked about."},
"6": {"name": "", "profile": "test",
"text": "I do remember that one question she asked."},
"7": {"name": "Natalie", "profile": "test",
"text": "'Did you get me a good present?'"},
"8": {"name": "", "profile": "test",
"text": "'You'll just have to wait until tomorrow morning and see.'"},
	},
# Work Scene
	10: {
"0": {"name": "", "profile": "test",
"text": "During the winter, I can make some extra money shoveling snow."},
"1": {"name": "", "profile": "test",
"text": "It doesn't pay much, but I do need the cash. And it's only temporary, anyways."},
"2": {"name": "", "profile": "test",
"text": "I have a better job lined up, but it doesn't start until the new year."},
"3": {"name": "", "profile": "test",
"text": "I just have to make it until then, and everything will be fine."},
	},
	11: {
"0": {"name": "", "profile": "test",
"text": "Another day out shoveling snow."},
"1": {"name": "", "profile": "test",
"text": "But of course, it's worth it"},
	},
# Ending Scenes
	20: { # True Ending
"0": {"name": "", "profile": "test",
"text": "'Hey, why are you sleeping in? It's Christmas!'"},
"1": {"name": "", "profile": "test",
"text": "'...'"},
"2": {"name": "", "profile": "test",
"text": "'...'"},
"3": {"name": "", "profile": "test",
"text": "'...'"},
"4": {"name": "", "profile": "test",
"text": "'It's okay. You go ahead and sleep.'"},
"5": {"name": "", "profile": "test",
"text": "'Merry Christmas.'"},
"6": {"name": "", "profile": "test",
"text": "'I love you.'"},
"7": {"name": "", "profile": "test",
"text": "'I'll love you forever.'"},
	},
	21: { # Neutral Ending
"0": {"name": "", "profile": "test",
"text": "I know something's wrong as soon as I awake."},
"1": {"name": "", "profile": "test",
"text": "It's far too late, of course."},
"2": {"name": "", "profile": "test",
"text": "Her body is already cold."},
"3": {"name": "", "profile": "test",
"text": "What could I have done differently?"},
"4": {"name": "", "profile": "test",
"text": "What could I have done to save her?"},
	},
	22: { # Bad Ending
"0": {"name": "", "profile": "test",
"text": "I know something's wrong as soon as I awake."},
"1": {"name": "", "profile": "test",
"text": "It's far too late, of course."},
"2": {"name": "", "profile": "test",
"text": "Her body is already cold."},
"3": {"name": "", "profile": "test",
"text": "This is my fault. I did this."},
"4": {"name": "", "profile": "test",
"text": "What could I have done differently?"},
"5": {"name": "", "profile": "test",
"text": "What could I have done to save her?"},
	},
# Story Scenes
	30: {
"0": {"name": "", "profile": "test",
"text": "A dream?"},
"1": {"name": "Old Man", "profile": "oldman",
"text": "'Yeah, think of this as a dream. Here, take this.'"},
"2": {"name": "", "profile": "test",
"text": "'An advent calendar?'"},
"3": {"name": "Old Man", "profile": "oldman",
"text": "'Something like a cross between a calendar and a journal.'"},
"4": {"name": "Old Man", "profile": "oldman",
"text": "'You'll need it for what you want to do.'"},
"5": {"name": "", "profile": "test",
"text": "When I awake, I'm clutching the advent calendar journal in my hand."},
"6": {"name": "", "profile": "test",
"text": "It's a beaten up little journal. The pages are mostly blank, except for the headers."},
"7": {"name": "", "profile": "test",
"text": "The headers count off the days of advent, the days until Christmas."},
"8": {"name": "", "profile": "test",
"text": "I think I picked it up off the ground somewhere yesterday, but in my early morning daze, I'm not so sure anymore."},
	},
	31: {
"0": {"name": "", "profile": "test",
"text": "Times are a little tough at the moment."},
"1": {"name": "", "profile": "test",
"text": "I need to visit the market every day to buy enough medicine for Natalie."},
"2": {"name": "", "profile": "test",
"text": "Money is tight, but with some haggling, I'm sure I can get by."},
	},
	32: {
"0": {"name": "", "profile": "test",
"text": "Times are a little tough at the moment."},
"1": {"name": "", "profile": "test",
"text": "I need to visit the market every day to buy enough medicine for Natalie."},
"2": {"name": "", "profile": "test",
"text": "Money is tight, but with some haggling, I'm sure I can get by."},
	},
	33: {
"0": {"name": "", "profile": "test",
"text": "The open market."},
	},
	34: {
"0": {"name": "", "profile": "test",
"text": "The open market."},
"1": {"name": "", "profile": "test",
"text": "With some haggling skill here, I could probably make a little profit with some smart buying and selling."},
	},
}

var intro_text = [
	[
		"My little sister Natalie loves Christmas.",
	],[
		"This year, she's been very sick.",
		"She needs to take medicine every day.",
	],[
		"The doctor is not optimistic, but I won't give up hope.",
		"Even the doctor admitted that her health depends a lot on her mood.",
		"So long as I take good care of her, keep her happy, she'll be fine.",
	],[
		"Whenever I bring up Christmas, her eyes light up like stars.",
		"As long as I keep her happy, I know she'll get better.",
	],[
		"I'll make this Christmas the best Christmas ever.",
	]
]

var credits = [
	[
		"Advent",
		"by Jack Anderson"
	],[
		"SOUNDTRACK",
		"'In the Bleak Midwinter' by Gustav Holst",
		"'O Holy Night' by Adolphe Adam",
		"'Carol of the Bells' by Mykola Leontovych",
		"'The First Noel'",
		"'Aud Lang Syne'",
		"'Advent' by Jack",
	],[
		"ART",
		"Yanagi Seigen"
	],[
		"Additional CC0 Assets from",
		"opengameart.org",
		"freesound.org",
		"kenney.nl",
		"unsplash.com",
		"fonts.google.com"
	],[
		"TOOLS",
		"Godot",
		"Krita",
	]
]
