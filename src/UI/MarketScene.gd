extends Control

onready var haggle = $Haggle
onready var shop = $Shop
onready var textbox = $Textbox

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
	if haggle.connect("offer_refused", self, "_on_offer_refused") != OK:
		push_error("UI signal connect fail")
	if haggle.connect("offer_made", self, "_on_offer_made") != OK:
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
	haggle.visible = false
	$Shop.set_mode(0)
	$Shop.visible = true
	print("buy mode")

func _on_sell_mode() -> void:
	haggle.visible = false
	$Shop.set_mode(1)
	$Shop.visible = true
	print("sell mode")

func _on_haggle(item, mode) -> void:
	if PlayerData.mp > 0:
		PlayerData.mp -= 1
		$HUD.update_stat_display()
		current_mode = mode
		haggle.set_mode(current_mode)
		haggle.set_target_item(item)
		haggle.visible = true
		$Shop.visible = false
	else:
		$Textbox.play_dialogue(
			{"0": {"name": "", "profile": "test",
			"text": "The Market is closing for now. Please come by later."},}
		)

func _on_offer_refused() -> void:
	$Textbox.play_dialogue(
		{"0": {"name": "Trader", "profile": "test",
		"text": "Disappointing that we couldn't make a deal this time. Ah, but there's always next time."},}
	)
	haggle.visible = false

func _on_offer_made(value) -> void:
	print("offer made at: ", str(value))
	textbox.play_dialogue( {
	"0": {"name": "Customer", "profile": "test",
	"text": "Could you make it a little cheaper?"},
})

func _on_text_finished() -> void:
	print("text finished")
