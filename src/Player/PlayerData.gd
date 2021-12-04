extends Node
# Player Data

func _ready() -> void:
	pass

func load_player_data(data: Dictionary) -> void:
	print(data)

func save_player_data() -> void:
	pass

func get_save_date(slot) -> String:
	print(slot)
	return "no save"
