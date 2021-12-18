extends HBoxContainer

signal item_selected(item)

var item_data: Resource = preload("res://data/item_data.tres") 
onready var itemlist = $ItemList
onready var pricetag = $Panel/Info/Price/BasePrice
onready var description = $Panel/Info/Description
onready var label = $Panel/Info/Price/Label
var items = []

func _ready() -> void:
	load_items(PlayerData.inventory)

func load_items(inventory) -> void:
	items.clear()
	itemlist.clear()
	for item in inventory:
		if inventory[item] > 0:
			items.append(item)
	for item in items:
		itemlist.add_item(item + " x" + str(inventory[item]),load(item_data.get_item_icon(item)))
	label.visible = false
	pricetag.set_text("")
	description.set_text("")

func _on_ItemList_item_selected(index: int) -> void:
	if index < len(items):
		label.visible = true
		pricetag.set_text(str(item_data.get_item_base_price(items[index])))
		description.set_text(item_data.get_item_description(items[index]))
		emit_signal("item_selected", items[index])
