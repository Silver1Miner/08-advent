extends Control

func _ready() -> void:
	if OS.get_name() == "HTML5":
		$Options/Quit.visible = false

func _on_New_pressed() -> void:
	print("New game pressed")

func _on_Load_pressed() -> void:
	$SaveMenu.visible = true

func _on_Settings_pressed() -> void:
	$SettingsMenu.visible = true

func _on_Quit_pressed() -> void:
	get_tree().quit()
