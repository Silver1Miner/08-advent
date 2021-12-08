extends HBoxContainer

signal item_selected(item)

var item_data = preload("res://data/item_data.tres") 
onready var itemlist = $ItemList
onready var pricetag = $Info/Price/BasePrice
onready var description = $Info/Description
var items = []

func _ready() -> void:
	load_items(PlayerData.inventory)
	pass

func load_items(inventory) -> void:
	items.clear()
	itemlist.clear()
	for item in inventory:
		if inventory[item] > 0:
			items.append(item)
	for item in items:
		itemlist.add_item(item + " x" + str(inventory[item]),load(item_data.get_item_icon(item)))

func _on_ItemList_item_selected(index: int) -> void:
	if index < len(items):
		$Info/Price/Label.visible = true
		pricetag.set_text(str(item_data.get_item_base_price(items[index])))
		description.set_text(item_data.get_item_description(items[index]))
		emit_signal("item_selected", items[index])
