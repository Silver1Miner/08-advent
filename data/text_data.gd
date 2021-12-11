extends Resource

func get_scene(id) -> Dictionary:
	if id in scenes:
		return scenes[id]
	return scenes[0]

func get_texture(id) -> String:
	if id in backgrounds:
		return backgrounds[id]
	return backgrounds[0]

func get_haggle(id) -> Dictionary:
	return haggle[id]

var haggle := {
	0:{
"0": {"name": "Test", "profile": "test",
"text": "Could you make it a little cheaper?"},
	},
}

var backgrounds := {
	0: "res://assets/Backgrounds/title.jpg" # error placeholder
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
# Story Scenes

}
