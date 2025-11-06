extends PhysicsBody2D
var collisionInfo = KinematicCollision2D
var veloBall = Vector2()
var speed = 1
@onready var walls = $"../walls/CollisionPolygon2D"


func _physics_process(delta: float) -> void:
	veloBall.y += 1
	collisionInfo = move_and_collide(veloBall)
	if collisionInfo:
		if collisionInfo.get_collider_shape() == walls:
			veloBall.x *= -0.7
		else:
			veloBall.x += collisionInfo.get_collider_velocity().x/50
			veloBall.y = -40
