extends Area2D

# --- VARIABEL NODE ---
@onready var sprite = $Sprite2D
@onready var particles = $CPUParticles2D
@onready var collision = $CollisionShape2D
@onready var serpihan_tanah = get_node_or_null("SerpihanTanah") 

var speed = 400
var is_exploded = false
var direction = Vector2(-1, 1).normalized() # Tetap diagonal ke kiri bawah

# UBAH ANGKA INI: Ini adalah posisi Y (ketinggian) jembatanmu!
var target_y = 100 

func _physics_process(delta):
	if not is_exploded:
		position += direction * speed * delta

		for body in get_overlapping_bodies():
			if body.name == "Player":
				get_tree().reload_current_scene()

		if global_position.y >= target_y:
			meledak()

func meledak():
	is_exploded = true
	
	# Suruh semua tanah hancur
	get_tree().call_group("bisa_hancur", "hancur")

	sprite.hide()
	
	particles.emitting = true 

	get_tree().call_group("kamera_player", "shake", 10)

	await get_tree().create_timer(3.0).timeout
	queue_free()


		
