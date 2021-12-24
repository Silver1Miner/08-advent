extends NinePatchRect

signal transaction_cancelled()
signal offer_countered(value)
signal offer_accepted(value)
signal not_enough_cash()
var current_value = 0
var base_value = 1000
var percent = 0
enum haggle_mode {BUY, SELL}
var current_mode = haggle_mode.BUY
var item_data: Resource = preload("res://data/item_data.tres")

onready var hundredthousand = $Display/Dial/HundredThousand
onready var tenthousand = $Display/Dial/TenThousand
onready var thousand = $Display/Dial/Thousand
onready var hundred = $Display/Dial/Hundred
onready var ten = $Display/Dial/Ten
onready var ones = $Display/Dial/One

func _ready() -> void:
	set_dial_value(base_value)

func set_mode(mode) -> void:
	current_mode = mode
	match current_mode:
		haggle_mode.BUY:
			$Display/Label.text = "Trying to buy from the market:"
		haggle_mode.SELL:
			$Display/Label.text = "Trying to sell to the buyer:"

func set_target_item(item_name: String) -> void:
	$Display/ItemName.set_text(item_name)
	$Display/Preview/PreviewImage.texture = load(item_data.get_item_icon(item_name))
	base_value = item_data.get_item_base_price(item_name)
	current_value = base_value
	percent = current_value / base_value * 100
	set_dial_value(base_value)

func _on_value_changed() -> void:
	calculate_dial_value()
	percent = current_value / base_value * 100
	$Display/Percentage.text = str(round(percent)) + "% of Wholesale Price"

func set_dial_value(value) -> void:
	var padded = "%0*d" % [6, value]
	hundredthousand.value = float(padded[0])
	tenthousand.value = float(padded[1])
	thousand.value = float(padded[2])
	hundred.value = float(padded[3])
	ten.value = float(padded[4])
	ones.value = float(padded[5])

func calculate_dial_value() -> void:
	current_value = 0
	current_value += float(ones.value)
	current_value += float(ten.value) * 10
	current_value += float(hundred.value) * 100
	current_value += float(thousand.value) * 1000
	current_value += float(tenthousand.value) * 10000
	current_value += float(hundredthousand.value) * 100000
	percent = current_value/base_value * 100

func _on_Decline_pressed() -> void:
	emit_signal("transaction_cancelled")

func _on_Offer_pressed() -> void:
	if current_mode == haggle_mode.BUY and current_value > PlayerData.cash:
		emit_signal("not_enough_cash")
		return
	calculate_dial_value()
	customer_decision(percent)

func customer_decision(percent_value) -> void:
	print("percent base: ", str(percent_value))
	randomize()
	match current_mode:
		haggle_mode.BUY:
			if percent_value >= rand_range(60,100):
				emit_signal("offer_accepted", current_value)
			else:
				emit_signal("offer_countered", current_value)
		haggle_mode.SELL:
			if percent_value <= rand_range(100,140):
				emit_signal("offer_accepted", current_value)
			else:
				emit_signal("offer_countered", current_value)

func _on_HundredThousand_value_changed(value: float) -> void:
	if value > 9:
		hundredthousand.set_value(0)
	elif value < 0:
		hundredthousand.set_value(9)
		tenthousand.set_value(tenthousand.get_value() - 1)
	_on_value_changed()

func _on_TenThousand_value_changed(value: float) -> void:
	if value > 9:
		tenthousand.set_value(0)
		hundredthousand.set_value(hundredthousand.get_value() + 1)
	elif value < 0:
		tenthousand.set_value(9)
		thousand.set_value(thousand.get_value() - 1)
	_on_value_changed()

func _on_Thousand_value_changed(value: float) -> void:
	if value > 9:
		thousand.set_value(0)
		tenthousand.set_value(tenthousand.get_value() + 1)
	elif value < 0:
		thousand.set_value(9)
		hundred.set_value(hundred.get_value() - 1)
	_on_value_changed()

func _on_Hundred_value_changed(value: float) -> void:
	if value > 9:
		hundred.set_value(0)
		thousand.set_value(thousand.get_value() + 1)
	elif value < 0:
		hundred.set_value(9)
		ten.set_value(ten.get_value() - 1)
	_on_value_changed()


func _on_Ten_value_changed(value: float) -> void:
	if value > 9:
		ten.set_value(0)
		hundred.set_value(hundred.get_value() + 1)
	elif value < 0:
		ten.set_value(9)
		ones.set_value(ones.get_value() - 1)
	_on_value_changed()

func _on_One_value_changed(value: float) -> void:
	if value > 9:
		ones.set_value(0)
		ten.set_value(ten.get_value() + 1)
	elif value < 0:
		ones.set_value(9)
	_on_value_changed()
