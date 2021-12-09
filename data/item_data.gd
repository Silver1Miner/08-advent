extends Resource

func get_item_base_price(id) -> float:
	return items[id]["base_price"]

func get_item_description(id) -> String:
	return items[id]["description"]

func get_item_icon(id) -> String:
	return items[id]["icon"]

var items = {
	"Medicine": {
		"base_price": 1000,
		"description": "An important medicine.",
		"icon": "res://assets/Icons/water.png"
	},
	"Advent": {
		"base_price": 4000,
		"description": "A mysterious combination journal-advent calendar.",
		"icon": "res://assets/Icons/book_open.png"
	}
}
