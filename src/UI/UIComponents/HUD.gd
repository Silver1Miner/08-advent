extends Control

onready var date_label = $Stats/Date/DateLabel
onready var money_label = $Stats/Money/MoneyLabel
onready var ap_label = $Stats/Time/APLabel

func _ready() -> void:
	update_stat_display()

func update_stat_display() -> void:
	date_label.text = str(PlayerData.day)
	money_label.text = str(PlayerData.cash)
	ap_label.text = str(PlayerData.ap)
	$InventoryInfo.load_items(PlayerData.inventory)

func _on_OpenInventory_toggled(button_pressed: bool) -> void:
	$InventoryInfo.visible = button_pressed

func _on_ToMarket_pressed() -> void:
	if get_tree().change_scene_to(PlayerData.market_scene) != OK:
		push_error("fail to change scene")

func _on_ToDialogue_pressed() -> void:
	if get_tree().change_scene_to(PlayerData.dialogue_scene) != OK:
		push_error("fail to change scene")
