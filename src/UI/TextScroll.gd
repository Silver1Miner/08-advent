extends Control

var next_level = PlayerData.hub_scene
const section_time := 2.0
const line_time := 0.8
const speed_up_multiplier := 10.0

var base_speed := 20
var speed_up := false

onready var skip_button := $Skip
onready var line := $Container/Label
onready var text_container := $Container
var started := false
var finished := false

var section
var section_next := true
var section_timer := 0.0
var line_timer := 0.0
var curr_line := 0
var lines := []
var text := []

func _ready() -> void:
	if PlayerData.new_game:
		base_speed = 30
		text = intro_text
		next_level = PlayerData.hub_scene
		PlayerData.new_game = false
	else:
		base_speed = 30
		text = credits
		next_level = PlayerData.main_menu

func _process(delta: float) -> void:
	var scrolling_speed = base_speed * delta
	if section_next:
		section_timer += delta * speed_up_multiplier if speed_up else delta
		if section_timer >= section_time:
			section_timer -= section_time
			if text.size() > 0:
				started = true
				section = text.pop_front()
				curr_line = 0
				add_line()
	else:
		line_timer += delta * speed_up_multiplier if speed_up else delta
		if line_timer >= line_time:
			line_timer -= line_time
			add_line()
	if speed_up:
		scrolling_speed *= speed_up_multiplier
	if lines.size() > 0:
		for l in lines:
			l.rect_position.y -= scrolling_speed
			if l.rect_position.y < -l.get_line_height():
				lines.erase(l)
				l.queue_free()
	elif started:
		finish()

func finish():
	if not finished:
		finished = true
		if get_tree().change_scene_to(next_level) != OK:
			push_error("fail to change scene")

func add_line():
	var new_line = line.duplicate()
	new_line.text = section.pop_front()
	lines.append(new_line)
	text_container.add_child(new_line)
	if section.size() > 0:
		curr_line += 1
		section_next = false
	else:
		section_next = true

func _unhandled_input(event) -> void:
	if event.is_action_pressed("ui_cancel"):
		finish()
	if event.is_action_pressed("ui_down") and !event.is_echo():
		speed_up = true
	if event.is_action_released("ui_down") and !event.is_echo():
		speed_up = false

func _on_Skip_pressed() -> void:
	finish()

var intro_text = [
	[
		"My sister loves Christmas.",
	],[
		"This year, she's been very sick.",
		"",
		"",
	],[
		",",
		"I want to give her the best Christmas ever."
	]
]

var credits = [
	[
		"Advent",
		"by Jack Anderson"
	],[
		"SOUNDTRACK",
		"'Advent' by Jack",
		"'In the Bleak Midwinter' by Gustav Holst",
		"'O Holy Night' by Adolphe Adam",
		"'Aud Lang Syne'",
	],[
		"Additional CC0 Assets from",
		"opengameart.org",
		"freesound.org",
		"kenney.nl",
		"unsplash.com",
		"fonts.google.com"
	],[
		"TOOLS",
		"Godot",
		"Krita",
	],[
		"Special Thanks",
		"You, for playing"
	]
]



