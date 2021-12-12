extends Control

onready var haggle = $Haggle
onready var shop = $Shop
onready var textbox = $Textbox
var item = ""

enum haggle_mode {BUY, SELL}
var current_mode = haggle_mode.BUY

func _ready() -> void:
	PlayerData.mp = 3
	$HUD.update_stat_display()
	$HUD/Actions.visible = false
	$HUD/MarketActions.visible = true
	$HUD/Stats/Market.visible = true
	if $HUD.connect("to_hub", self, "go_to_hub") != OK:
		push_error("fail to connect dialogue signal")
	if $HUD.connect("buy_mode", self, "_on_buy_mode") != OK:
		push_error("fail to connect buy signal")
	if $HUD.connect("sell_mode", self, "_on_sell_mode") != OK:
		push_error("fail to connect sell signal")
	if shop.connect("haggle_item", self, "_on_haggle") != OK:
		push_error("fail to connect haggle signal")
	if haggle.connect("transaction_cancelled", self, "_on_transaction_cancelled") != OK:
		push_error("UI signal connect fail")
	if haggle.connect("offer_countered", self, "_on_offer_countered") != OK:
		push_error("UI signal connect fail")
	if haggle.connect("offer_accepted", self, "_on_offer_accepted") != OK:
		push_error("UI signal connect fail")
	if haggle.connect("not_enough_cash", self, "_on_not_enough_cash") != OK:
		push_error("UI signal connect fail")
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")
	$Textbox.play_dialogue(
		{"0": {"name": "Trader", "profile": "test",
		"text": "Welcome to the Open Market. Haggle away."},}
	)

func go_to_dialogue() -> void:
	$TransitionScene.transition_to(PlayerData.dialogue_scene)

func go_to_hub() -> void:
	$TransitionScene.transition_to(PlayerData.hub_scene)

func _on_buy_mode() -> void:
	if PlayerData.mp > 0:
		haggle.visible = false
		$Shop.set_mode(0)
		$Shop.visible = true
	else:
		$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "test",
			"text": "The Market is closing for now. Please come by later."},}
		)

func _on_sell_mode() -> void:
	if PlayerData.mp > 0:
		haggle.visible = false
		$Shop.set_mode(1)
		$Shop.visible = true
	else:
		$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "test",
			"text": "The Market is closing for now. Please come by later."},}
		)

func _on_haggle(item_name, mode) -> void:
	if PlayerData.mp > 0:
		PlayerData.mp -= 1
		$HUD.update_stat_display()
		current_mode = mode
		item = item_name
		haggle.set_mode(current_mode)
		haggle.set_target_item(item)
		haggle.visible = true
		$Shop.visible = false
	else:
		$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "test",
			"text": "The Market is closing for now. Please come by later."},}
		)

func _on_transaction_cancelled() -> void:
	$Textbox.play_dialogue(
		{"0": {"name": "Trader", "profile": "test",
		"text": "Disappointing that we couldn't make a deal this time. Ah, but there's always next time."},}
	)
	haggle.visible = false

func _on_offer_accepted(value) -> void:
	print("offer accepted at for ", item, "at: ", value)
	$Textbox.play_dialogue(
		{"0": {"name": "Trader", "profile": "test",
		"text": "Pleasure doing business with you."},}
	)
	match current_mode:
		haggle_mode.BUY:
			PlayerData.inventory[item] = clamp(PlayerData.inventory[item]+1, 0, 99)
			PlayerData.cash = int(clamp(PlayerData.cash - value, 0, 999999))
			shop.remove_inventory(item)
		haggle_mode.SELL:
			PlayerData.inventory[item] = clamp(PlayerData.inventory[item]-1, 0, 99)
			PlayerData.cash = int(clamp(PlayerData.cash + value, 0, 999999))
	haggle.visible = false
	$HUD.update_stat_display()

func _on_offer_countered(value) -> void:
	print("offer made at: ", str(value))
	match current_mode:
		haggle_mode.BUY:
			textbox.play_dialogue( {
			"0": {"name": "Trader", "profile": "test",
			"text": "This is quality stuff. Could you offer a bit more?"},})
		haggle_mode.SELL:
			textbox.play_dialogue( {
			"0": {"name": "Trader", "profile": "test",
			"text": "Come on, don't try to gouge me. Could you lower the price?"},})

func _on_not_enough_cash() -> void:
	$Textbox.play_dialogue(
		{"0": {"name": "Trader", "profile": "test",
		"text": "Don't joke around. I know you don't have that much on you."},}
	)

func _on_text_finished() -> void:
	print("text finished")
