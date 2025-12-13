@tool
extends Control

var popup
var divided_x
var divided_y
var control_division
# Called when the node enters the scene tree for the first time.
func _enter_tree():
	#popup = Popup.new();
	#add_child(popup);
	control_division =  4;
	var parent: Control = get_parent()
	position.x = parent.size.x
	position.y = parent.size.y
	print(position)
	divided_x = position.x / control_division
	divided_y = position.y / control_division
	print(divided_x, divided_y)
	for div in control_division:
		var child_node = Control.new()
		if div == 1:
			child_node.set_position(Vector2(0,divided_y))
		elif div == 2:
			child_node.set_position(Vector2(divided_x,divided_y))
		elif div == 3:
			child_node.set_position(Vector2(divided_x, position.y))
		
		add_child(Control.new())
			
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
