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
		"0": {"name": "Test", "profile": "test",
		"text": "It's gotten late. Time for bed, right? Yes, I made sure to take my medicine."},
		"1": {"name": "Test", "profile": "test",
		"text": "Good night."},
	},
	-2:{
		"0": {"name": "Test", "profile": "test",
		"text": "Time for bed, right?"},
		"1": {"name": "Test", "profile": "test",
		"text": "Oh, we're out of medicine?"},
		"2": {"name": "Test", "profile": "test",
		"text": "Well, I'm sure I can get by without it. Good night."},
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
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 8"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
	},
	9: {
"0": {"name": "Test", "profile": "test",
"text": "This is the play scene for day 9"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
"2": {"name": "Test", "profile": "test",
"text": "Bye bye."},
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
	20: {
"0": {"name": "Test", "profile": "test",
"text": "This is ending 2"},
"1": {"name": "Test", "profile": "test",
"text": "The quick brown fox jumps over the lazy dog."},
	},
}

var intro_text = [
	[
		"My sister loves Christmas.",
	],[
		"This year, she's been very sick.",
		"",
		"",
	],[
		",",
		"I want to give her the best Christmas ever."
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
		"Special Thanks",
		"You, for playing"
	]
]
