extends Node
# Player Data

var cash := 1000
var inventory := {
	"Medicine": 3,
}
var current_scene := 0
var day := 1

func _ready() -> void:
	pass

func load_player_data(data: Dictionary) -> void:
	cash = data["cash"]
	inventory = data["inventory"]
	current_scene = data["current_scene"]
	day = data["day"]
	print(data)

func save_player_data() -> void:
	var save = {}
	save["cash"] = cash
	save["inventory"] = inventory
	save["current_scene"] = current_scene
	save["day"] = day
	print(save)

func get_save_date(slot) -> String:
	print(slot)
	return "no save"
