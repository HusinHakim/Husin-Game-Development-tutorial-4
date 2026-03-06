extends Area2D

func _on_body_entered(body):
	# Mengecek apakah yang menyentuh jurang adalah karakter kita (Player)
	if body.name == "Player": 
		# Perintah untuk memuat ulang scene yang sedang aktif saat ini
		get_tree().reload_current_scene()
