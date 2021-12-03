extends Control

onready var haggle = $Haggle
onready var textbox = $Textbox

func _ready() -> void:
	if haggle.connect("offer_refused", self, "_on_offer_refused") != OK:
		push_error("UI signal connect fail")
	if haggle.connect("offer_made", self, "_on_offer_made") != OK:
		push_error("UI signal connect fail")
	if textbox.connect("text_finished", self, "_on_text_finished") != OK:
		push_error("UI signal connect fail")

func _on_offer_refused() -> void:
	print("offer refused")

func _on_offer_made(value) -> void:
	print("offer made at: ", str(value))
	textbox.play_dialogue( {
	"0": {"name": "Customer", "profile": "test",
	"text": "Could you make it a little cheaper?"},
})

func _on_text_finished() -> void:
	print("text finished")
