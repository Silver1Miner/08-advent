extends Control

func _ready() -> void:
	if OS.get_name() == "HTML5":
		$Options/Quit.visible = false

func _on_Survival_pressed() -> void:
	print("Survival mode pressed")

func _on_Free_pressed() -> void:
	print("Free mode pressed")

func _on_Load_pressed() -> void:
	$SaveMenu.visible = true

func _on_Settings_pressed() -> void:
	$SettingsMenu.visible = true

func _on_Quit_pressed() -> void:
	get_tree().quit()






