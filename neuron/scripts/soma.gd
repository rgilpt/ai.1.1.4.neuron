extends Sprite2D

var output_value : float
var bias = 0.2
var list_inputs = []
@onready var label: Label = $Label

signal value_changed(float)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.set_text("b = %s" % bias)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_link_value_changed(float: Variant) -> void:
	output_value = 0
	for inputs in list_inputs:
		output_value += inputs.output_value
	
	output_value += bias
	
	print("Soma: %s"%output_value)
	value_changed.emit(output_value)
