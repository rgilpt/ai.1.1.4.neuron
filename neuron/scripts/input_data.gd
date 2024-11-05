extends Marker2D

@onready var line_edit: LineEdit = $LineEdit

signal value_changed(float)

var previous_value = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _draw() -> void:
	draw_rect(Rect2(1.0, 1.0, 3.0, 3.0), Color.CORAL)




func _on_line_edit_text_submitted(new_text: String) -> void:
	var new_value = float(line_edit.text)
	if new_value != null:
		value_changed.emit(new_value)
		previous_value = new_value
