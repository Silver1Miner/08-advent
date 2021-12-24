extends Control

func _ready() -> void:
	if AudioManager.stream != preload("res://assets/Audio/In_the_Bleak_Midwinter.ogg"):
		AudioManager.play_music("res://assets/Audio/In_the_Bleak_Midwinter.ogg")
	if PlayerData.day == PlayerData.max_days:
		if PlayerData.stats["misses"] == 0 and PlayerData.stats["plays"] >= 5:
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
	if PlayerData.day == 1 and PlayerData.ap == 3:
		$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "",
			"text": "Actions take time, measured in Action Points. The day ends when the 3 AP are used up."},
			"1": {"name": "", "profile": "",
			"text": "Going to the market takes 1 AP. It is the only place to buy more medicine."},
			"2": {"name": "", "profile": "",
			"text": "Playing takes 2 AP. Spending time with Natalie is good for her health."},
			"3": {"name": "", "profile": "",
			"text": "Working takes 2 AP. It is a guaranteed way to make more cash."},
		})
	if PlayerData.day >= 6 or PlayerData.stats["misses"] >= 3:
		$Reading.visible = false
		$Lying.visible = false
		$Drawing.visible = false
		$Reading2.visible = false
	elif PlayerData.day == 2:
		$Reading.visible = false
		$Lying.visible = true
		$Drawing.visible = false
		$Reading2.visible = false
	elif PlayerData.day == 3:
		$Reading.visible = false
		$Lying.visible = false
		$Drawing.visible = true
		$Reading2.visible = false
	elif PlayerData.day == 4:
		$Reading.visible = false
		$Lying.visible = false
		$Drawing.visible = false
		$Reading2.visible = true
	else:
		$Reading.visible = true
		$Lying.visible = false
		$Drawing.visible = false
		$Reading2.visible = false

func go_to_dialogue() -> void:
	if PlayerData.ap >= 2:
		PlayerData.next_scene = PlayerData.day
		PlayerData.ap -= 1 # other 1 substracted at end of dialogue scene
		PlayerData.stats["plays"] += 1
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
		PlayerData.next_scene = -3
	$TransitionScene.transition_to(PlayerData.dialogue_scene)


func _on_Reading_pressed() -> void:
	$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "",
			"text": "Natalie always did love reading. She's probably read more books than I have."},}
		)

func _on_Lying_pressed() -> void:
	$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "",
			"text": "Recently Natalie has had a lot of fun learning to play a sort of three player chess game."},}
		)

func _on_Drawing_pressed() -> void:
	$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "",
			"text": "Natalie was always very creative, constantly writing or drawing something."},}
		)

func _on_Reading2_pressed() -> void:
	$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "",
			"text": "Natalie always did love reading. She's probably read more books than I have."},}
		)
