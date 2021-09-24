extends Sprite
var vel
var spin
var id = 0
func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			print("A click!")
