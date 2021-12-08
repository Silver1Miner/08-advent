extends Control

func _ready() -> void:
	$HUD/Actions.visible = true

func go_to_dialogue() -> void:
	if get_tree().change_scene_to(PlayerData.dialogue_scene) != OK:
		push_error("fail to change scene")

func go_to_market() -> void:
	if get_tree().change_scene_to(PlayerData.market_scene) != OK:
		push_error("fail to change scene")
