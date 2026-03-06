extends Node2D
@export var obstacle : PackedScene

func _ready():
	repeat()

func spawn():
	if obstacle != null:
		var spawned = obstacle.instantiate()
		
		# 1. Atur posisinya terlebih dahulu
		var spawn_pos = global_position
		spawn_pos.x = spawn_pos.x + randf_range(-1000, 1000)
		spawned.global_position = spawn_pos
		
		# 2. INI YANG DIGANTI: Masukkan ke scene dengan antrean (deferred)
		get_parent().call_deferred("add_child", spawned)

func repeat():
	spawn()
	await get_tree().create_timer(1.0).timeout
	repeat()
