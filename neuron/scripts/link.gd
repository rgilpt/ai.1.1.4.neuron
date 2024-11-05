extends Marker2D

var weight = 0
@onready var h_slider: HSlider = $HSlider
@onready var label: Label = $Label
@onready var marker_2d: Marker2D = $Marker2D

signal value_changed(float)
var input_value = 0.0
var output_value = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_h_slider_drag_ended(slider_value_changed: bool) -> void:
	weight = h_slider.value
	label.set_text(str(weight))
	output_value = weight * input_value
	value_changed.emit(output_value)



func _on_input_data_value_changed(value: float) -> void:
	input_value = value
	output_value = weight * value
	value_changed.emit(output_value)
