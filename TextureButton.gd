extends TextureButton
var velx=(randi()%100)
var vely=(randi()%100)
var vel = Vector2(velx,vely)
onready var screensize = get_viewport_rect().size
func _ready():
	set_process(true)
	
func _process(delta):
	set_rotation(get_rotation()+PI/8*delta)
	##set_position(get_position()+vel*delta)
	var pos = get_position()
	pos += vel * delta
	if pos.x >= 1024 or pos.x <= 0:
		vel.x *= -1
		print(screensize.x)
		print(pos.x)
		print(" ")
	if pos.y >= 600 or pos.y <= 0:
		vel.y *= -1
		print(screensize.y)
		print(pos.y)
		print(" ")
	set_position(pos)
	
	

func _on_TextureButton_button_up():
	vel.x *= 1.02
	vel.y *= 1.02
