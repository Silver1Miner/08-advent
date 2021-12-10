extends Control

var text_data: Resource = preload("res://data/text_data.tres")
onready var textbox = $Textbox

func _ready() -> void:
	$HUD/Actions.visible = false
	$HUD/MarketActions.visible = false
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")
	$Textbox.play_dialogue(text_data.get_scene(PlayerData.next_scene))

func go_to_hub() -> void:
	if PlayerData.ap <= 0:
		PlayerData.day += 1
		PlayerData.ap = 3
	$TransitionScene.transition_to(PlayerData.hub_scene)

func go_to_market() -> void:
	$TransitionScene.transition_to(PlayerData.market_scene)

func _on_text_finished() -> void:
	go_to_hub()