extends Button

signal value_changed(value)
# Called when the node enters the scene tree for the first time.
var value: int = 0 #start with 0
@onready var label: Label = $Label

func _ready() -> void:
	update_label_text()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	value = 1 - value
	emit_signal("value_changed", value)
	update_label_text()

func update_label_text():
	label.text = str(value)
	
