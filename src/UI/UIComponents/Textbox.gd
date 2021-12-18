extends Control

signal text_finished()
var page = "0"
var text_playing = true
var dialogue = {}
onready var nametag = $Panels/Center/Name
onready var text = $Panels/Center/Speech
onready var avatar = $LeftProfile
var text_dialogue = {
	"0": {"name": "Test", "profile": "test",
	"text": "Placeholder"},
}
var profiles = {
	"oldman": preload("res://assets/Profiles/oldman.png")
}

func _ready() -> void:
	$Timer.wait_time = 0.02
	$Timer.autostart = true
	if $Timer.connect("timeout", self, "_on_timer_timeout") != OK:
		push_error("timer connect fail")
	#play_dialogue(text_dialogue)

func play_dialogue(text_data) -> void:
	visible = true
	$Panels/Right/TextOptions.visible = true
	$Panels/Center.color = Color(0,0,0,75.0/255)
	$Panels/Left.color = Color(0,0,0,75.0/255)
	$Panels/Right.color = Color(0,0,0,75.0/255)
	$Timer.start()
	dialogue = text_data
	page = "0"
	text.set_bbcode(dialogue[page]["text"])
	nametag.set_text(dialogue[page]["name"])
	if dialogue[page]["profile"] in profiles:
		avatar.set_texture(profiles[dialogue[page]["profile"]])
	text.set_visible_characters(0)
	set_process_input(true)

func _on_next() -> void:
	if text_playing:
		if text.get_visible_characters() > text.get_total_character_count():
			if int(page) < dialogue.size() - 1:
				page = str(int(page) + 1)
				text.set_bbcode(dialogue[page]["text"])
				nametag.set_text(dialogue[page]["name"])
				#avatar.set_texture(profiles[dialogue[page]["profile"]])
				text.set_visible_characters(0)
			elif int(page) >= dialogue.size() - 1:
				end_text()
		else:
			text.set_visible_characters(text.get_total_character_count())

func _unhandled_input(event) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("left_click"):
		_on_next()
	elif event.is_action_pressed("ui_cancel") or event.is_action_pressed("right_click"):
		end_text()

func end_text() -> void:
	nametag.text = ""
	text.clear()
	$Panels/Center.color = Color(0,0,0,0)
	$Panels/Left.color = Color(0,0,0,0)
	$Panels/Right.color = Color(0,0,0,0)
	$Panels/Right/TextOptions.visible = false
	emit_signal("text_finished")

func _on_timer_timeout() -> void:
	text.set_visible_characters(text.get_visible_characters()+1)

func _on_next_pressed() -> void:
	_on_next()

func _on_skip_pressed() -> void:
	end_text()
