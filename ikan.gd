extends RigidBody2D

func _on_body_entered(body):
	# Mengecek apakah objek yang bertabrakan dengan ikan adalah Player
	if body.name == "Player":
		# Jika iya, maka ulangi level (kondisi kalah)
		get_tree().reload_current_scene()
