extends KinematicBody2D

const UP = Vector2(0, -1)
const FLAP = -1500
const MAXFALLSPEED = 1500
const Gravity = 80

var motion = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	motion.y += Gravity
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED

	if Input.is_action_just_pressed("FLAP"):
			motion.y = FLAP
	
	motion = move_and_slide(motion, UP)
