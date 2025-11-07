extends PhysicsBody2D
var collisionInfo = KinematicCollision2D
var veloBall = Vector2()
var speed = 1
@onready var walls = $"../walls"
@onready var floor = $"../floor"


func _physics_process(delta: float) -> void:
	veloBall.y += 1
	collisionInfo = move_and_collide(veloBall)
	if collisionInfo:
		if collisionInfo.get_collider() == walls:
			veloBall.x *= -0.7
		else: if collisionInfo.get_collider() == floor:
			global_position=Vector2(0,-300)
			veloBall = Vector2(0, 0)
		else:
			veloBall.x += collisionInfo.get_collider_velocity().x/50
			veloBall.y = -40
