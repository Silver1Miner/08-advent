extends AudioStreamPlayer

onready var tween = $Tween

# MUSIC
func play_music(music_path: String, start: float = 0) -> void:
	tween.interpolate_property(self, "volume_db", linear2db(PlayerData.music_db), -80, 0.8, 1, Tween.EASE_IN, 0)
	tween.start()
	yield(tween, "tween_completed")
	tween.interpolate_property(self, "volume_db", -20, linear2db(PlayerData.music_db), 1.0, 1, Tween.EASE_IN, 0)
	tween.start()
	stream = load(music_path)
	play(start)

# SOUND
var available = []
var queue = []
func _ready() -> void:
	for i in 8:
		var p = AudioStreamPlayer.new()
		add_child(p)
		available.append(p)
		p.connect("finished", self, "_on_sound_finished", [p])
		p.bus = "Sound"

func _on_sound_finished(next_stream):
	available.append(next_stream)

func play_sound(sound_path: String):
	queue.append(sound_path)

func _process(_delta: float) -> void:
	if not queue.empty() and not available.empty():
		available[0].stream = load(queue.pop_front())
		available[0].play()
		available.pop_front()



