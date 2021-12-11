extends Control

func _ready() -> void:
	if PlayerData.ap <= 0:
		end_day()
	$HUD/Stats/Market.visible = false
	$HUD/Actions.visible = true
	$HUD/MarketActions.visible = false
	$HUD/Actions/Play/ToDialogue.disabled = (PlayerData.ap < 2)
	$HUD/Actions/Market/ToMarket.disabled = (PlayerData.ap < 1)
	$HUD/Actions/Work/ToWork.disabled = (PlayerData.ap < 2)
	if $HUD.connect("to_dialogue", self, "go_to_dialogue") != OK:
		push_error("fail to connect dialogue signal")
	if $HUD.connect("to_market", self, "go_to_market") != OK:
		push_error("fail to connect market signal")

func go_to_dialogue() -> void:
	PlayerData.next_scene = PlayerData.day
	if PlayerData.ap >= 2:
		PlayerData.ap -= 2
		$HUD.update_stat_display()
		$TransitionScene.transition_to(PlayerData.dialogue_scene)

func go_to_market() -> void:
	if PlayerData.ap >= 1:
		PlayerData.ap -= 1
		$HUD.update_stat_display()
		$TransitionScene.transition_to(PlayerData.market_scene)

func end_day() -> void:
	if PlayerData.inventory["Medicine"] > 0:
		PlayerData.next_scene = -1
	elif PlayerData.stats["misses"] < 2:
		PlayerData.stats["misses"] += 1
		PlayerData.next_scene = -2
	else:
		PlayerData.stats["misses"] += 1
		PlayerData.next_scene = -3
	$TransitionScene.transition_to(PlayerData.dialogue_scene)
