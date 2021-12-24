extends ColorRect

var current_slot = 0
onready var slot_list = $SaveOptions/SaveSlots
onready var save_button = $SaveOptions/Save
onready var load_button = $SaveOptions/Load

func _ready() -> void:
	load_slot_names()

func load_slot_names() -> void:
	slot_list.clear()
	for i in range(5):
		slot_list.add_item("Entry " + str(i+1) + ", last saved: " + PlayerData.get_save_date(i))
	save_button.disabled = true
	load_button.disabled = true

func _on_Close_pressed() -> void:
	visible = false

func _on_Load_pressed() -> void:
	print("load file ", str(current_slot))
	PlayerData.load_player_data(PlayerData.load_game(current_slot))
	visible = false
	if get_tree().change_scene_to(PlayerData.hub_scene) != OK:
		push_error("fail to change scene")

func _on_Save_pressed() -> void:
	PlayerData.save_game(current_slot)
	print("save file ", str(current_slot))
	visible = false

func _on_SaveSlots_item_selected(index: int) -> void:
	current_slot = index
	print(current_slot)
	save_button.disabled = false
	if PlayerData.get_save_date(index) != "no save entry":
		load_button.disabled = false
	else:
		load_button.disabled = true
