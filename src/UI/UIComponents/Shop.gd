extends NinePatchRect
enum shop_mode {BUY, SELL}
var current_mode = shop_mode.BUY
var current_item = ""
var shop_inventory = {
	"Medicine": 1,
}

signal haggle_item(item, current_mode)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if PlayerData.day in inventory_schedule:
		shop_inventory = inventory_schedule[PlayerData.day]
	else:
		shop_inventory = inventory_schedule[1]
	if $Display/InventoryInfo.connect("item_selected", self, "_on_item_selected") != OK:
		push_error("signal connect fail")

func set_mode(mode) -> void:
	current_mode = mode
	match current_mode:
		shop_mode.BUY: #0
			$Display/Label.text = "Try to Buy:"
			$Display/InventoryInfo.load_items(shop_inventory)
		shop_mode.SELL: #1
			$Display/Label.text = "Try to Sell:"
			$Display/InventoryInfo.load_items(PlayerData.inventory)

var inventory_schedule = {
	1: { # day, Dec 20
		"Medicine": 1,
		"Bread": 3,"Cheese": 2,"Pie":0
	},
	2: { #Dec21
	"Medicine": 1,
	"Bread": 3,"Cheese":2,"Pie":1,"Mitten":1
	},
	3: { #Dec22
	"Medicine": 2,
	"Bread": 3,"Cheese":2,"Pie":2,"Book":1
	},
	4: {#Dec23
	"Medicine": 2,
	"Cheese":2,"Pie":3,"Gold":1,"Mitten":1
	},
	5: {#Dec24
	"Medicine": 0,
	"Bread": 3,"Cheese":2,"Pie":1,"Gold":1
	},
}

func remove_inventory(item: String) -> void:
	if item in shop_inventory:
		shop_inventory[item] -= 1

func _on_item_selected(item: String) -> void:
	current_item = item
	#print("selected ", item)

func _on_Accept_pressed() -> void:
	#print("try to buy/sell ", current_item)
	emit_signal("haggle_item", current_item, current_mode)

func _on_Cancel_pressed() -> void:
	current_item = ""
	visible = false
