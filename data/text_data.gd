extends Resource

func get_scene(id) -> Dictionary:
	if id in scenes:
		return scenes[id]
	return scenes[0]

func get_texture(id) -> String:
	if id in backgrounds:
		return backgrounds[id]
	return backgrounds[0]

var backgrounds := {
	0: "res://assets/Backgrounds/street.jpg", # error placeholder
	7: "res://assets/Backgrounds/market.jpg"
}

var scenes := {
	# End of Day Scenes
	-1:{
"0": {"name": "", "profile": "test",
"text": "'It's gotten late. Time for bed. Did you take your medicine?'"},
"1": {"name": "Natalie", "profile": "test",
"text": "'Yes, I made sure to take my medicine.'"},
"2": {"name": "", "profile": "test",
"text": "'Good night then.'"},
"3": {"name": "Natalie", "profile": "test",
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
"text": "'Is that a hint as to what you got me for Christmas?'"},
"13": {"name": "Natalie", "profile": "test",
"text": "'Nice try. You'll just have to wait until next week.'"},
	},
	2: { #Dec 19
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
	3: { #Dec 20
"0": {"name": "", "profile": "test",
"text": ""},
"1": {"name": "Test", "profile": "test",
"text": ""},
	},
	4: { #Dec 21
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 4"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	5: { #Dec 22
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 5"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	6: { #Dec 23
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 6"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	7: { #Dec 24
"0": {"name": "", "profile": "test",
"text": "For Christmas Eve, I took Natalie around town to see the lights."},
"1": {"name": "", "profile": "test",
"text": "It might have been a bad idea, given her health, but she looked a little better than usual that day."},
"2": {"name": "", "profile": "test",
"text": "I made sure she was dressed as warmly as possible, and we took a very slow pace so as to not tire her out."},
"3": {"name": "", "profile": "test",
"text": "We didn't talk that much, either. We just walked, very slowly and quietly, hand in hand, enjoy the sights and each other's company."},
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
"text": "During the winter, I can make some money shoveling snow."},
"1": {"name": "", "profile": "test",
"text": "It doesn't pay much, but I do need the cash. And it's only temporary, anyways."},
"2": {"name": "", "profile": "test",
"text": "I have a better job lined up, but it doesn't start until the new year."},
"3": {"name": "", "profile": "test",
"text": "I just have to make it to Christmas, to the end of the year, and everything will be fine."},
	},
	11: {
"0": {"name": "", "profile": "test",
"text": "Another day out shoveling snow."},
"1": {"name": "", "profile": "test",
"text": "But for her, it's worth it"},
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
"text": "Her body is already cold. The cold seems to flow into me as I hug her."},
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
"text": "Her body is already cold. The cold seems to pierce my heart as I hug her."},
"3": {"name": "", "profile": "test",
"text": "This is my fault. I did this."},
"4": {"name": "", "profile": "test",
"text": "What could I have done differently?"},
"5": {"name": "", "profile": "test",
"text": "What could I have done to save her?"},
	},
# Story Scnees
	30: {
"0": {"name": "", "profile": "test",
"text": "A dream?"},
"1": {"name": "Old Man", "profile": "test",
"text": "'Yeah, think of this as a dream. Here, take this.'"},
"2": {"name": "", "profile": "test",
"text": "'An advent calendar?'"},
"3": {"name": "Old Man", "profile": "test",
"text": "'Something like a cross between a calendar and a journal.'"},
"4": {"name": "Old Man", "profile": "test",
"text": "'You'll need it for what you want to do, even though it's impossible.'"},
"5": {"name": "Old Man", "profile": "test",
"text": "'You can't save her. But you'll try anyways.'"},
"6": {"name": "", "profile": "test",
"text": "When I awake, I'm clutching the advent calendar journal in my hand."},
"7": {"name": "", "profile": "test",
"text": "It's a beaten up little journal. The pages are mostly blank, except for the headers."},
"8": {"name": "", "profile": "test",
"text": "The headers count off the days of advent, the days until Christmas."},
"9": {"name": "", "profile": "test",
"text": "I think I picked it up off the ground somewhere yesterday, but in my early morning daze, I'm not so sure anymore."},
	},
	31: {
"0": {"name": "", "profile": "test",
"text": "Times are a little tough at the moment."},
"1": {"name": "", "profile": "test",
"text": ""},
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
		"'Advent' by Jack",
		"'In the Bleak Midwinter' by Gustav Holst",
		"'O Holy Night' by Adolphe Adam",
		"'Aud Lang Syne'",
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
	],[
		"Dedicated to",
		"Natalie"
	]
]
