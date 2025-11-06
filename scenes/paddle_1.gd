extends CharacterBody2D
static var veloPad = Vector2()
var speed = 1
var collisionInfo = CollisionObject2D

func get_input():
	if Input.is_action_pressed('P1Left'):
		veloPad.x -= 2*speed
	if Input.is_action_pressed('P1Right'):
		veloPad.x += 2*speed

func _physics_process(delta: float) -> void:
	get_input()
	veloPad.x *= 0.925
	collisionInfo = move_and_collide(veloPad)
	if collisionInfo:
		veloPad.x = veloPad.x/-1
