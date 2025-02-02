extends CharacterBody3D

const MAXSPEED = 30
const ACCELERATION = 0.75

var input_vect = Vector3()

func _physics_process(delta):
	input_vect.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vect.y = Input.get_action_strength("up") - Input.get_action_strength("down")
	input_vect = input_vect.normalized()
	velocity = velocity.move_toward(input_vect * MAXSPEED, ACCELERATION)
	rotation_degrees.z = velocity.x * -2
	rotation_degrees.x = velocity.y / 2
	rotation_degrees.y = -velocity.x / 2
	move_and_slide()
	
