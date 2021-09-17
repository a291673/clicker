extends Node2D

var screenH
var screenW
var points = 0

func _ready():
	$Canvas/RichTextLabel.text = str(points)
	var scr = get_viewport_rect().size
	screenW = scr.x
	screenH = scr.y
	randomize()
	z_index = 1


func _on_TextureButton_pressed():
	points += 1
	$Canvas/RichTextLabel.text = str(points)
