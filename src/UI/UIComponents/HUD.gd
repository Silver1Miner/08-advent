extends Control

onready var date_label = $Stats/Date/DateLabel
onready var money_label = $Stats/Money/MoneyLabel
onready var ap_label = $Stats/Time/APLabel
onready var mp_label = $Stats/Market/MPLabel

signal to_market()
signal to_dialogue()
signal to_hub()
signal to_work()
signal buy_mode()
signal sell_mode()

func _ready() -> void:
	update_stat_display()

func update_stat_display() -> void:
	date_label.text = str(PlayerData.day)
	money_label.text = str(PlayerData.cash)
	ap_label.text = str(PlayerData.ap)
	mp_label.text = str(PlayerData.mp)
	$InventoryInfo.load_items(PlayerData.inventory)

func update_action_availability() -> void:
	if PlayerData.ap < 3:
		$Actions/Work.visible = false
	if PlayerData.inventory["Advent"] <= 0:
		$Actions/Save.visible = false

func _on_OpenInventory_toggled(button_pressed: bool) -> void:
	$InventoryInfo.visible = button_pressed

func _on_ToMarket_pressed() -> void:
	emit_signal("to_market")

func _on_ToDialogue_pressed() -> void:
	emit_signal("to_dialogue")

func _on_OpenSave_pressed() -> void:
	$SaveMenu.visible = true

func _on_LeaveMode_pressed() -> void:
	emit_signal("to_hub")

func _on_BuyMode_pressed() -> void:
	emit_signal("buy_mode")

func _on_SellMode_pressed() -> void:
	emit_signal("sell_mode")

func _on_ToWork_pressed() -> void:
	emit_signal("to_work")
