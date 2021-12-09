extends Control

func _ready() -> void:
	$HUD/Actions.visible = true
	$HUD/MarketActions.visible = false
	if $HUD.connect("to_dialogue", self, "go_to_dialogue") != OK:
		push_error("fail to connect dialogue signal")
	if $HUD.connect("to_market", self, "go_to_market") != OK:
		push_error("fail to connect market signal")

func go_to_dialogue() -> void:
	if get_tree().change_scene_to(PlayerData.dialogue_scene) != OK:
		push_error("fail to change scene")

func go_to_market() -> void:
	if get_tree().change_scene_to(PlayerData.market_scene) != OK:
		push_error("fail to change scene")
