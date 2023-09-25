extends CharacterBody2D

@export var speed = 200
var player_position
var target
@onready var player = get_parent().get_parent().get_node("cat")

func _physics_process(delta):
	player_position = player.position
	target = (player - position).normalized()
	
	if position.distance_to(player) > 3:
		move_and_slide()
		look_at(player_position)
