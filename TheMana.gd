extends ProgressBar

@onready var timer = $Timer
@onready var Mana_bar = $ManaBar

var mana = 0 : set = _set_mana

func _set_mana(new_mana):
	var prev_mana = mana
	mana = min(max_value, new_mana)
	value = mana


func init_mana(_mana):
	mana * _mana
	max_value = mana
	value = mana
	Mana_bar.max_value = mana
	Mana_bar.value = mana
