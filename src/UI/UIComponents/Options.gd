extends ColorRect

func _ready() -> void:
	visible = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		visible = true
		$VolumeControls/MusicVolume.set_value(db2linear(AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Music"))))
		$VolumeControls/SoundVolume.set_value(db2linear(AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Sound"))))

func _on_Close_pressed() -> void:
	visible = false

func _on_ToMainMenu_pressed() -> void:
	if get_tree().change_scene_to(PlayerData.main_menu) != OK:
		push_error("fail to change scene")

func _on_MusicVolume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(
		AudioServer.get_bus_index("Music"), linear2db(value)
	)

func _on_SoundVolume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(
		AudioServer.get_bus_index("Sound"), linear2db(value)
	)
