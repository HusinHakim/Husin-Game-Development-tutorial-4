extends Node2D
@export var obstacle : PackedScene

func _ready():
	# Tunggu 2 detik, lalu jatuhkan 1 meteor saja
	await get_tree().create_timer(2.0).timeout
	spawn()

func spawn():
	if obstacle != null:
		var spawned = obstacle.instantiate()
		
		# 1. Atur posisinya terlebih dahulu
		spawned.global_position = global_position
		
		# 2. INI YANG DIGANTI: Masukkan ke scene dengan antrean (deferred)
		get_parent().call_deferred("add_child", spawned)
