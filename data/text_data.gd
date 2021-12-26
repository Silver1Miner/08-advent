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
	1: "res://assets/CG/window.png",
	2: "res://assets/CG/chess.png",
	3: "res://assets/CG/snow.png",
	4: "res://assets/CG/chocolate.png",
	5: "res://assets/CG/eve.png",
	20: "res://assets/CG/end-true.png",
	21: "res://assets/CG/end.png",
	22: "res://assets/CG/end.png",
	30: "res://assets/Backgrounds/room.jpg",
	-1: "res://assets/Backgrounds/room.jpg",
	-2: "res://assets/Backgrounds/room.jpg",
	-3: "res://assets/Backgrounds/room.jpg"
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
"0": {"name": "Mark", "profile": "test",
"text": "'It's gotten late. Time for bed. Did you take your medicine?'"},
"1": {"name": "Natalie", "profile": "natalie-base",
"text": "'Yes.'"},
"2": {"name": "Mark", "profile": "natalie-base",
"text": "'Good night then.'"},
"3": {"name": "Natalie", "profile": "natalie-base",
"text": "'Good night.'"},
	},
	-2:{
"0": {"name": "Natalie", "profile": "natalie-base",
"text": "'Time for bed, right?'"},
"1": {"name": "Natalie", "profile": "natalie-base",
"text": "'Oh, we're out of medicine?'"},
"2": {"name": "Natalie", "profile": "natalie-base",
"text": "'Well, I'm sure I can get by without it for today. Good night.'"},
	},
	-3:{
"0": {"name": "Natalie", "profile": "natalie-base",
"text": "'We're out of medicine again?'"},
"1": {"name": "Natalie", "profile": "natalie-base",
"text": "'I was hoping... since I've been feeling a bit...'"},
"2": {"name": "Natalie", "profile": "natalie-base",
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
	9: { #Dec 18 CANCELLED
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
	1: { #Dec 20
"0": {"name": "Mark", "profile": "test",
"text": "That day, I found Natalie staring outside the window, watching the snow."},
"1": {"name": "Mark", "profile": "test",
"text": "She always did love playing in the snow."},
"2": {"name": "Mark", "profile": "test",
"text": "In her current condition though, going outside was out of the question."},
"3": {"name": "Mark", "profile": "test",
"text": "'Hey, how about I read you a story?'"},
"4": {"name": "Natalie", "profile": "test",
"text": "'I'm too old for that.'"},
"5": {"name": "Mark", "profile": "test",
"text": "'But I'm not. Come on, humor me a little.'"},
"6": {"name": "Mark", "profile": "test",
"text": "Though she rolled her eyes, she couldn't hide the eagerness in how she snuggled up against my side."},
"7": {"name": "Natalie", "profile": "test",
"text": "'I get to pick the book, right?'"},
"8": {"name": "Mark", "profile": "test",
"text": "'Of course.'"},
	},
	2: { #Dec 21
"0": {"name": "Mark", "profile": "test",
"text": "I spent the day inside playing a board game with Natalie."},
"1": {"name": "Natalie", "profile": "test",
"text": "'It's called Three Kingdoms Chess. See, there are three different sides, so three kingdoms.'"},
"2": {"name": "Natalie", "profile": "test",
"text": "'But it's asymmetrical, and it can be played as a 2 versus 1.'"},
"3": {"name": "Mark", "profile": "test",
"text": "Natalie really became interested in 'three kingdoms' stuff that year. And of course, she tried to get me into it."},
"4": {"name": "Natalie", "profile": "test",
"text": "'If you got around to reading it yourself, you'd see the appeal.'"},
"5": {"name": "Natalie", "profile": "test",
"text": "'This is definitely something you'd like.'"},
"6": {"name": "Mark", "profile": "test",
"text": "'I'm sure I would.'"},
"7": {"name": "Mark", "profile": "test",
"text": "I did promise Natalie I would read it someday, but I just haven't had the time."},
"8": {"name": "Mark", "profile": "test",
"text": "One day I will though, and I'll surprise her with something special."},
	},
	3: { #Dec 22
"0": {"name": "Mark", "profile": "test",
"text": "I had a little surprise planned for Natalie."},
"1": {"name": "Natalie", "profile": "test",
"text": "'Oh! That's...!'"},
"2": {"name": "Mark", "profile": "test",
"text": "'Going outside is a bad idea, so I thought I'd bring a little bit of the outside inside.'"},
"3": {"name": "Mark", "profile": "test",
"text": "'Put on your gloves first, though.'"},
"4": {"name": "Mark", "profile": "test",
"text": "It was such a simple little thing, a little basin of snow."},
"5": {"name": "Mark", "profile": "test",
"text": "But her smile was so bright if practically reflected off the snow."},
"6": {"name": "Mark", "profile": "test",
"text": "When the miniature snowman was finished, we put it in the freezer for safe keeping."},
"7": {"name": "Mark", "profile": "test",
"text": "I still have the icy remains of it today."},
	},
	4: { #Dec 23
"0": {"name": "Mark", "profile": "test",
"text": "It was colder than usual, cold enough that we could feel it even inside."},
"1": {"name": "Mark", "profile": "test",
"text": "That was as good an excuse as any to make some hot chocolate from scratch."},
"2": {"name": "Mark", "profile": "test",
"text": "I kept my own plain, but for Natalie, I had all the toppings."},
"3": {"name": "Mark", "profile": "test",
"text": "Marshmallows, whipped cream, chocolate shavings, just the way she liked it."},
"4": {"name": "Mark", "profile": "test",
"text": "She immediately smiled upon seeing it, exactly as I expected."},
"5": {"name": "Natalie", "profile": "test",
"text": "'Thanks! It looks so good!'"},
"6": {"name": "Mark", "profile": "test",
"text": "There was no fireplace to sit next to, so we contended ourselves with staring at the wall."},
"7": {"name": "Mark", "profile": "test",
"text": "And yet somehow, sitting together with our chocolate, it felt like there was no difference."},
	},
	8: { #Dec 23 CANCELLED
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
	5: { #Dec 24
"0": {"name": "Mark", "profile": "test",
"text": "For Christmas Eve, I took Natalie around town to see the lights."},
"1": {"name": "Mark", "profile": "test",
"text": "It might have been a bad idea, but the day was warmer than most, and she looked a little better than usual."},
"2": {"name": "Mark", "profile": "test",
"text": "I made sure she was dressed as warmly as possible, and we took a very slow pace so as to not tire her out."},
"3": {"name": "Mark", "profile": "test",
"text": "We didn't talk much, either. We just walked, hand in hand, enjoy the sights and each other's company."},
"4": {"name": "Mark", "profile": "test",
"text": "Eventually, we took a little break in front of the big public tree in the center of town."},
"5": {"name": "Mark", "profile": "test",
"text": "I don't remember which one of us broke the silence first, or most of what we talked about."},
"6": {"name": "Mark", "profile": "test",
"text": "I do remember that one question she asked."},
"7": {"name": "Natalie", "profile": "test",
"text": "'Did you get me a good present?'"},
"8": {"name": "Mark", "profile": "test",
"text": "'You'll just have to wait until tomorrow morning and see.'"},
	},
# Work Scene
	10: {
"0": {"name": "Mark", "profile": "test",
"text": "During the winter, I can make some extra money shoveling snow."},
"1": {"name": "Mark", "profile": "test",
"text": "It doesn't pay much, but I do need the cash. And it's only temporary, anyways."},
"2": {"name": "Mark", "profile": "test",
"text": "I have a better job lined up, but it doesn't start until the new year."},
"3": {"name": "Mark", "profile": "test",
"text": "I just have to make it until then, and everything will be fine."},
	},
	11: {
"0": {"name": "Mark", "profile": "test",
"text": "Another day out shoveling snow."},
"1": {"name": "Mark", "profile": "test",
"text": "But of course, it's worth it"},
	},
# Ending Scenes
	20: { # True Ending
"0": {"name": "Mark", "profile": "test",
"text": "'Hey, why are you sleeping in? It's Christmas!'"},
"1": {"name": "Mark", "profile": "test",
"text": "'...'"},
"2": {"name": "Mark", "profile": "test",
"text": "'...'"},
"3": {"name": "Mark", "profile": "test",
"text": "'...'"},
"4": {"name": "Mark", "profile": "test",
"text": "'It's okay. You go ahead and sleep.'"},
"5": {"name": "Mark", "profile": "test",
"text": "'Merry Christmas.'"},
"6": {"name": "Mark", "profile": "test",
"text": "'I love you, Natalie.'"},
"7": {"name": "Mark", "profile": "test",
"text": "'I'll love you forever.'"},
	},
	21: { # Neutral Ending
"0": {"name": "Mark", "profile": "test",
"text": "I know something's wrong as soon as I awake."},
"1": {"name": "Mark", "profile": "test",
"text": "It's far too late, of course."},
"2": {"name": "Mark", "profile": "test",
"text": "Her body is already cold."},
"3": {"name": "Mark", "profile": "test",
"text": "What could I have done differently?"},
"4": {"name": "Mark", "profile": "test",
"text": "What could I have done to save her?"},
	},
	22: { # Bad Ending
"0": {"name": "Mark", "profile": "test",
"text": "I know something's wrong as soon as I awake."},
"1": {"name": "Mark", "profile": "test",
"text": "It's far too late, of course."},
"2": {"name": "Mark", "profile": "test",
"text": "Her body is already cold."},
"3": {"name": "Mark", "profile": "test",
"text": "This is my fault. I did this."},
"4": {"name": "Mark", "profile": "test",
"text": "What could I have done differently?"},
"5": {"name": "Mark", "profile": "test",
"text": "What could I have done to save her?"},
	},
# Story Scenes
	30: {
"0": {"name": "Natalie", "profile": "natalie-base",
"text": "'I checked the medicine cabinet, and it looks like we only have one dose left?'"},
"1": {"name": "Mark", "profile": "natalie-base",
"text": "'No worries. I can always swing by the market to buy more.'"},
"2": {"name": "Mark", "profile": "",
"text": "Natalie is smart. She always remembers to take her medicine every evening."},
"3": {"name": "Mark", "profile": "",
"text": "It's just on me to make sure to keep the medicine cabinet stocked."},
"4": {"name": "Mark", "profile": "",
"text": "My new job doesn't start until after the holidays, but I can make quick cash shoveling snow."},
"5": {"name": "Mark", "profile": "",
"text": "Alternatively, I could try my luck and haggling skills flipping commodites at the market."},
"6": {"name": "Natalie", "profile": "natalie-base",
"text": "'Is everything alright?'"},
"7": {"name": "Mark", "profile": "natalie-base",
"text": "'Everything is fine. Relax and leave everything to me.'"},
	},
	39: {
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
}

var intro_text = [
	[
		"My little sister Natalie always loved Christmas.",
	],[
		"That year, she was very sick.",
		"She needed to take medicine every day.",
	],[
		"The doctor was not optimistic, but I wouldn't give up hope.",
		"Even the doctor admitted that her health depended on her mood.",
		"So I thought, if I took good care of her, she'd be fine.",
	],[
		"As long as I kept her happy, she would get better.",
		"And I had already picked out the perfect Christmas gift.",
	],[
		"I would make that Christmas the best Christmas ever.",
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
		"Yanagi"
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
		"For 'Natalie'"
	]
]
