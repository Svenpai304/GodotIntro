extends Sprite2D

@export var speed = 80
var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	motion = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		motion.x = -speed
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	if Input.is_action_pressed("ui_up"):
		motion.y = -speed
	if Input.is_action_pressed("ui_down"):
		motion.y = speed
	if(motion.length_squared() > 0):
		print_debug("Moving")
	move_local_x(motion.normalized().x * speed, delta)
	move_local_y(motion.normalized().y * speed, delta)
