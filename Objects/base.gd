extends Node2D

"""
Init bases position and color
setget color to change the color when a opposent heart touch it
"""

onready var sprite = $Sprite
var region_blue: = Rect2(Vector2(0, 18), Vector2(69, 9))
var region_pink: = Rect2(Vector2(0, 28), Vector2(69, 9))

export (String) var start_color = "pink" 
var color: String setget set_color

var blue_position: = Vector2(97, 15)
var pink_position: = Vector2(97, 330)

func _ready() -> void:
	#the position is fixed
	sprite.region_rect = region_pink if start_color == "pink" else region_blue
	sprite.global_position = pink_position if start_color == "pink" else blue_position
	#the color will change when opposent touch it - or else
	self.color = start_color
	
func set_color(value):
	if value == "pink":
		sprite.flip_v = false		
	elif value == "blue":
		sprite.flip_v = true
