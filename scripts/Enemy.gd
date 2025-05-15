extends CharacterBody2D

@export var speed: int = -400
@export var GRAVITY: int = 1200

const UP = Vector2(0,-1)


func _process(delta):

	if position.y >= 600:
		queue_free() 

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	velocity.x = speed
	set_velocity(velocity)
	set_up_direction(UP)
	move_and_slide()
	velocity = velocity
