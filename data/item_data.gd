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
	"Bread": {
		"base_price": 500,
		"description": "A staple food.",
		"icon": "res://assets/Icons/bread.png"
	},
	"Cheese": {
		"base_price": 800,
		"description": "A staple food.",
		"icon": "res://assets/Icons/cheese.png"
	},
	"Pie": {
		"base_price": 1500,
		"description": "Popular in the Christmas season.",
		"icon": "res://assets/Icons/pie.png"
	},
	"Gold": {
		"base_price": 5000,
		"description": "Very popular in the Christmas season. Also popular after Christmas. And before.",
		"icon": "res://assets/Icons/coins_gold.png"
	},
	"Book": {
		"base_price": 1800,
		"description": "A thick leather bound history book.",
		"icon": "res://assets/Icons/book_07.png"
	},
	"Mitten": {
		"base_price": 3000,
		"description": "Very useful for keeping warm in the winter cold.",
		"icon": "res://assets/Icons/mitten.png"
	},
	"Advent": {
		"base_price": 5000,
		"description": "A mysterious combination journal-advent calendar.",
		"icon": "res://assets/Icons/book_open.png"
	},
}
