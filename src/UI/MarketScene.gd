extends Control

onready var haggle = $Haggle
onready var textbox = $Textbox

func _ready() -> void:
	$HUD/Actions.visible = false
	$HUD/MarketActions.visible = true
	if $HUD.connect("to_hub", self, "go_to_hub") != OK:
		push_error("fail to connect dialogue signal")
	if $HUD.connect("buy_mode", self, "_on_buy_mode") != OK:
		push_error("fail to connect buy signal")
	if $HUD.connect("sell_mode", self, "_on_sell_mode") != OK:
		push_error("fail to connect sell signal")
	if haggle.connect("offer_refused", self, "_on_offer_refused") != OK:
		push_error("UI signal connect fail")
	if haggle.connect("offer_made", self, "_on_offer_made") != OK:
		push_error("UI signal connect fail")
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")

func go_to_dialogue() -> void:
	if get_tree().change_scene_to(PlayerData.dialogue_scene) != OK:
		push_error("fail to change scene")

func go_to_hub() -> void:
	if get_tree().change_scene_to(PlayerData.hub_scene) != OK:
		push_error("fail to change scene")

func _on_buy_mode() -> void:
	$Shop.set_mode(0)
	$Shop.visible = true
	print("buy mode")

func _on_sell_mode() -> void:
	$Shop.set_mode(1)
	$Shop.visible = true
	print("sell mode")

func _on_offer_refused() -> void:
	print("offer refused")

func _on_offer_made(value) -> void:
	print("offer made at: ", str(value))
	textbox.play_dialogue( {
	"0": {"name": "Customer", "profile": "test",
	"text": "Could you make it a little cheaper?"},
})

func _on_text_finished() -> void:
	print("text finished")
