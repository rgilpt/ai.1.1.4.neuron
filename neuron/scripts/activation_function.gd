extends Sprite2D

@onready var label_output: Label = $LabelOutput
var last_value = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func calculate_relu(value) -> float:
	
	if value > 0:
		return value
		
	return 0


func _on_soma_value_changed(new_value: Variant) -> void:
	last_value = calculate_relu(new_value)
	label_output.set_text(str(last_value))
