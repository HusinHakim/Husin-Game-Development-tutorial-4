extends Camera2D

var shake_time = 0.0
var shake_intensity = 20.0 # Semakin besar, getarannya semakin heboh

func _process(delta):
	if shake_time > 0:
		# Menggeser posisi kamera secara acak
		offset = Vector2(randf_range(-1.0, 1.0), randf_range(-1.0, 1.0)) * shake_intensity
		shake_time -= delta
	else:
		offset = Vector2.ZERO # Kembalikan kamera ke posisi semula

# Fungsi ini akan dipanggil oleh meteor saat menabrak tanah
func shake(duration: float):
	shake_time = duration
