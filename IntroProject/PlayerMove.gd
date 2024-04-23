extends CharacterBody2D

@export var speed = 40
@export var rotation_speed = 5
@export var friction = 0.4

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var rotate_dir = Input.get_axis("ui_left", "ui_right")
	var move_dir = Input.get_axis("ui_down", "ui_up")
	
	if(rotate_dir != 0):
		rotate(rotation_speed * rotate_dir * delta)
	if(move_dir != 0):
		velocity += transform.y * -move_dir * speed
	velocity -= velocity * friction * delta
	move_and_slide()
