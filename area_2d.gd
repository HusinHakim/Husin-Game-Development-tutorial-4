extends Area2D

# Nama file level 1 kamu (tanpa .tscn). Pastikan huruf besar/kecilnya sama persis!
@export var sceneName: String = "Level1" 

func _on_body_entered(body):
	# Jika yang menyentuh roket adalah alien (Player)
	if body.name == "Player":
		# Pindah kembali ke Level 1
		# Pastikan folder tempat kamu menyimpan scene bernama "scenes"
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
