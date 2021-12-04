extends Control

onready var textbox = $Textbox
var market_scene: PackedScene = preload("res://src/UI/MarketScene.tscn")

func _ready() -> void:
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")

func go_to_market() -> void:
	if get_tree().change_scene_to(market_scene) != OK:
		push_error("fail to change scene")

func _on_text_finished() -> void:
	go_to_market()
