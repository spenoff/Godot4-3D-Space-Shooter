extends CharacterBody3D

var speed = randf_range(20, 50)

func _physics_process(delta: float) -> void:
	velocity = Vector3(0, 0, speed)
	move_and_slide()
	if transform.origin.z > 10:
		queue_free()
