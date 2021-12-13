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
	0: "res://assets/Backgrounds/street.jpg" # error placeholder
}

var scenes := {
	# End of Day Scenes
	-1:{
"0": {"name": "", "profile": "test",
"text": "It's gotten late. Time for bed. Did you take your medicine?"},
"1": {"name": "Natalie", "profile": "test",
"text": "Yes, I made sure to take my medicine."},
"2": {"name": "Natalie", "profile": "test",
"text": "Good night."},
	},
	-2:{
"0": {"name": "Test", "profile": "test",
"text": "Time for bed, right?"},
"1": {"name": "Test", "profile": "test",
"text": "Oh, we're out of medicine?"},
"2": {"name": "Test", "profile": "test",
"text": "Well, I'm sure I can get by without it for today. Good night."},
	},
	-3:{
"0": {"name": "Test", "profile": "test",
"text": "Oh, we're out of medicine again?"},
"1": {"name": "Test", "profile": "test",
"text": "I was hoping... since I've been feeling a bit..."},
"2": {"name": "Test", "profile": "test",
"text": "Ah... it's nothing. Good night."},
	},
# Error result
	0: {
"0": {"name": "Test", "profile": "test",
"text": "This is generic error return result"},
"1": {"name": "Test", "profile": "test",
"text": "It appears when text is missing"},
"2": {"name": "Test", "profile": "test",
"text": "Sorry about that."},
	},
# Play Scenes
	1: {
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 1"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	2: {
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 2"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	3: {
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 3"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	4: {
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 4"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	5: {
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 5"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	6: {
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 6"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	7: {
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 7"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	8: {
"0": {"name": "", "profile": "test",
"text": "Happy Christmas Eve."},
"1": {"name": "Test", "profile": "test",
"text": "Did you get me a good present?"},
"2": {"name": "Test", "profile": "test",
"text": ""},
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
"text": "Hey, are you sleeping in? It's Christmas! Time to..."},
"1": {"name": "", "profile": "test",
"text": "..."},
"2": {"name": "", "profile": "test",
"text": "..."},
"3": {"name": "", "profile": "test",
"text": "I see."},
"4": {"name": "", "profile": "test",
"text": "It's okay. You go ahead and sleep."},
"5": {"name": "", "profile": "test",
"text": "Merry Christmas."},
"6": {"name": "", "profile": "test",
"text": "I love you."},
"7": {"name": "", "profile": "test",
"text": "I'll love you forever."},
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
"text": "Yeah, think of this as a dream. Here, take this."},
"2": {"name": "", "profile": "test",
"text": "An advent calendar?"},
"3": {"name": "Old Man", "profile": "test",
"text": "Something like a cross between a calendar and a journal."},
"4": {"name": "Old Man", "profile": "test",
"text": "You'll need it for what you want to do, even though it's impossible."},
"5": {"name": "Old Man", "profile": "test",
"text": "You can't save her. But you'll try anyways."},
"6": {"name": "", "profile": "test",
"text": "When I awake, I'm clutching the advent calendar journal in my hand."},
"7": {"name": "", "profile": "test",
"text": "It's a beaten up little journal. The pages are mostly blank, except for the headers."},
"8": {"name": "", "profile": "test",
"text": "The headers count off the days of advent, the days until Christmas."},
"9": {"name": "", "profile": "test",
"text": "I think I picked it up off the ground yesterday, but in my early morning daze, I'm not so sure anymore."},
	},
}

var intro_text = [
	[
		"My little sister Natalie loves Christmas.",
	],[
		"This year, she's been very sick.",
		"She needs to take medicine every day.",
	],[
		"The doctor is pessimistic, but I won't give up hope.",
		"Even the doctor admitted that her health depends a lot on her mood.",
		"So long as I take good care of her, she'll be fine.",
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
