extends Control

func _ready() -> void:
	if AudioManager.stream != preload("res://assets/Audio/In_the_Bleak_Midwinter.ogg"):
		AudioManager.play_music("res://assets/Audio/In_the_Bleak_Midwinter.ogg")
	if PlayerData.day == PlayerData.max_days:
		if PlayerData.stats["misses"] == 0:
			PlayerData.ending = 2
			PlayerData.next_scene = 20
		else:
			PlayerData.ending = 1
			PlayerData.next_scene = 21
		$TransitionScene.transition_to(PlayerData.dialogue_scene)
	elif PlayerData.stats["misses"] >= 3:
		PlayerData.ending = 1
		PlayerData.next_scene = 22
		$TransitionScene.transition_to(PlayerData.dialogue_scene)
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
	if $HUD.connect("to_work", self, "go_to_work") != OK:
		push_error("fail to connect work signal")

func go_to_dialogue() -> void:
	if PlayerData.ap >= 2:
		PlayerData.next_scene = PlayerData.day
		PlayerData.ap -= 1 # other 1 substracted at end of dialogue scene
		$HUD.update_stat_display()
		$TransitionScene.transition_to(PlayerData.dialogue_scene)

func go_to_work() -> void:
	if PlayerData.ap >= 2:
		if PlayerData.has_worked:
			PlayerData.next_scene = 11
		else:
			PlayerData.next_scene = 10
			PlayerData.has_worked = true
		PlayerData.ap -= 1 # other 1 substracted at end of dialogue scene
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
		PlayerData.inventory["Medicine"] -= 1
	elif PlayerData.stats["misses"] < 2:
		PlayerData.stats["misses"] += 1
		PlayerData.next_scene = -2
	else:
		PlayerData.stats["misses"] += 1
		PlayerData.ending = 1
		PlayerData.next_scene = -3
	$TransitionScene.transition_to(PlayerData.dialogue_scene)
