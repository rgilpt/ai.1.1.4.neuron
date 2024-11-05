@tool
extends Node2D

@onready var soma: Sprite2D = $Soma
@onready var link: Marker2D = $Link
@onready var link_2: Marker2D = $Link2

@onready var input_data: Marker2D = $InputData
@onready var input_data_2: Marker2D = $InputData2
@onready var activation_function: Sprite2D = $ActivationFunction

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	soma.list_inputs.append(link)
	soma.list_inputs.append(link_2)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	
func _draw() -> void:
	draw_line(link.position, input_data.position,Color.BURLYWOOD,3)
	draw_line(link_2.position, input_data_2.position,Color.BURLYWOOD,3)
	
	draw_line(link.position + link.marker_2d.position, soma.position,Color.BURLYWOOD,3)
	draw_line(link_2.position + link_2.marker_2d.position, soma.position,Color.BURLYWOOD,3)
	
	draw_line(soma.position, activation_function.position, Color.BURLYWOOD,3)
