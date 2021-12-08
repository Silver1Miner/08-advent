extends NinePatchRect
enum shop_mode {BUY, SELL}
var current_mode = shop_mode.BUY
var current_item = ""

signal haggle_item(item)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if $Display/InventoryInfo.connect("item_selected", self, "_on_item_selected") != OK:
		push_error("signal connect fail")

func set_mode(mode) -> void:
	current_mode = mode
	match current_mode:
		shop_mode.BUY:
			$Display/Label.text = "Try to Buy:"
			$Display/InventoryInfo.load_items(shop_inventory)
		shop_mode.SELL:
			$Display/Label.text = "Try to Sell:"
			$Display/InventoryInfo.load_items(PlayerData.inventory)

var shop_inventory = {
	"Medicine": 1,
}

func _on_item_selected(item: String) -> void:
	current_item = item
	print("selected ", item)

func _on_Accept_pressed() -> void:
	print("try to buy/sell ", current_item)
	emit_signal("haggle_item", current_item)

func _on_Cancel_pressed() -> void:
	current_item = ""
	visible = false
