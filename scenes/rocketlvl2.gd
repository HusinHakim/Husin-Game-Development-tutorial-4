extends Area2D

@export var sceneName: String = "Level1" 

func _on_body_entered(body):
	# 1. Cek apakah roket mendeteksi ada yang nabrak
	print(">>> ALERT: Roket disentuh oleh objek bernama: ", body.name)
	
	# Kita buat pengecekannya tidak sensitif huruf besar/kecil untuk jaga-jaga
	if body.name == "Player" or body.name == "player":
		var jalur = "res://scenes/" + sceneName + ".tscn"
		print(">>> ALERT: Mencoba buka file di: ", jalur)
		
		# 2. Cek apakah Godot berhasil pindah atau malah error (0 = Sukses)
		var hasil = get_tree().change_scene_to_file(jalur)
		print(">>> ALERT: Status pindah level (0 artinya sukses): ", hasil)
