extends Control

func _ready() -> void:
	AudioManager.volume_db = linear2db(0)
	AudioManager.play_music("res://assets/Audio/In_the_Bleak_Midwinter.ogg", 0)
	if OS.get_name() == "HTML5":
		$Options/Quit.visible = false

func _on_New_pressed() -> void:
	PlayerData.new_game = true
	PlayerData.load_player_data(PlayerData.default_save)
	if get_tree().change_scene_to(PlayerData.credits) != OK:
		push_error("fail to change scene")

func _on_Load_pressed() -> void:
	$SaveMenu.visible = true
	$SaveMenu.load_slot_names()

func _on_Settings_pressed() -> void:
	$SettingsMenu.visible = true

func _on_Quit_pressed() -> void:
	get_tree().quit()


