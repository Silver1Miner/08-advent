extends Node

func get_item_name(id) -> String:
	return items[id]["name"]

func get_item_base_price(id) -> float:
	return items[id]["base_price"]

func get_item_description(id) -> String:
	return items[id]["description"]

var items = {
	0: {
		"name": "Medicine",
		"base_price": 1000,
		"description": "",
	},
}
