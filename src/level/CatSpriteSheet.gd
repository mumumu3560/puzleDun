extends Sprite2D

@onready var _animated_sprite = $AnimationPlayer

func _process(_delta):
	_animated_sprite.play("walk")
