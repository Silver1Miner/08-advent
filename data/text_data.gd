extends Node

func get_scene(id) -> Dictionary:
	return scenes[id]

func get_haggle(id) -> Dictionary:
	return haggle[id]

var haggle := {
	0:{
"0": {"name": "Test", "profile": "test",
"text": "Could you make it a little cheaper?"},
	},
}

var scenes := {
	0: {
"0": {"name": "Test", "profile": "test",
"text": "The quick brown fox"},
"1": {"name": "Test", "profile": "test",
"text": "jumps over the lazy dog"},
"2": {"name": "Test", "profile": "test",
"text": "again and again"},
	},
}
