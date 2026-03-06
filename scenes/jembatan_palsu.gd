extends StaticBody2D

@onready var sprite = $Sprite2D
@onready var collision = $CollisionShape2D
@onready var particles = $SerpihanTanah

func hancur():
	sprite.hide()
	collision.disabled = true
	particles.emitting = true
