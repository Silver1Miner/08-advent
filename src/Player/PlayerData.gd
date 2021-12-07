extends Node

var new_game = false
var end_game = false
var day := 2
var cash := 4000
var ap := 3
var stats := {
	"hp": 100,
	"miss_streak": 0,
	"misses": 0,
}
var inventory := {
	"Medicine": 3,
}
var collected := {
	"Medicine": true,
}
var current_scene := 0
var market_scene: PackedScene = preload("res://src/UI/MarketScene.tscn")
var dialogue_scene: PackedScene = preload("res://src/UI/DialogueScene.tscn")
var hub_scene: PackedScene = preload("res://src/UI/Hub.tscn")
var main_menu: PackedScene = preload("res://src/Menu/MainMenu.tscn")
var credits: PackedScene = preload("res://src/UI/TextScroll.tscn")

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
