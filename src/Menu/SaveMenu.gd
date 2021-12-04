extends ColorRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_SaveSlots_item_selected(index: int) -> void:
	print("selected save slot " + str(index))

func _on_Save_pressed() -> void:
	print("save pressed")

func _on_Load_pressed() -> void:
	print("load pressed")

func _on_Close_pressed() -> void:
	visible = false
