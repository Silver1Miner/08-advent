extends Control

var text_data: Resource = preload("res://data/text_data.tres")
onready var textbox = $Textbox

func _ready() -> void:
	$HUD/Actions.visible = false
	$HUD/MarketActions.visible = false
	$HUD/Stats/Market.visible = false
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")
	$Background.set_texture(load(text_data.get_texture(PlayerData.next_scene)))
	$Textbox.play_dialogue(text_data.get_scene(PlayerData.next_scene))

func go_to_hub() -> void:
	if PlayerData.ap <= 0:
		PlayerData.day = int(clamp(PlayerData.day + 1, 0, PlayerData.max_days))
		PlayerData.ap = 4
	$TransitionScene.transition_to(PlayerData.hub_scene)

func go_to_market() -> void:
	$TransitionScene.transition_to(PlayerData.market_scene)

func _on_text_finished() -> void:
	if PlayerData.ending == 0:
		go_to_hub()
		if PlayerData.next_scene <= 11:
			PlayerData.ap -= 1
		if PlayerData.next_scene == 10 or PlayerData.next_scene == 11:
			PlayerData.cash = int(clamp(PlayerData.cash+1000,0,PlayerData.max_cash))
	else:
		$TransitionScene.transition_to(PlayerData.credits)
