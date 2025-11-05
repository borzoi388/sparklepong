extends CharacterBody2D
var velo = Vector2()
var speed = 1
var collisionInfo = CollisionObject2D

func get_input():
	if Input.is_action_pressed('P1Left'):
		velo.x -= 2*speed
	if Input.is_action_pressed('P1Right'):
		velo.x += 2*speed

func _physics_process(delta: float) -> void:
	get_input()
	velo.x *= 0.925
	collisionInfo = move_and_collide(velo)
	if collisionInfo:
		velo.x = velo.x/-1
