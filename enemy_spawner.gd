extends Node3D

var Enemy = load("res://Scenes/enemy.tscn")

func spawn():
	var main = get_tree().get_current_scene()
	var enemy = Enemy.instantiate()
	main.add_child(enemy)
	enemy.transform.origin = transform.origin + Vector3(randf_range(-30, 15), randf_range(-10, 10), 0)


func _on_timer_timeout() -> void:
	spawn() # Replace with function body.
