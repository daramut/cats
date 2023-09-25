extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_all = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = input_all * speed
	
	if Input.is_action_just_pressed("Shoot"):
		print("shoot you bitch")
	

func _physics_process(delta):
	get_input()
	move_and_slide()
	
