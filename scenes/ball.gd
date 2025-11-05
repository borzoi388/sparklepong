extends CharacterBody2D
var collisionInfo = CollisionObject2D
var velo = Vector2()

func _physics_process(delta: float) -> void:
	velo.y += 1
	collisionInfo = move_and_collide(velo)
	
	if collisionInfo:
		velo.y *= -1
		velo.x *= -1
