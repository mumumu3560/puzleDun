extends Node2D

var move_speed = 200
var gravity = 10

var velocity = Vector2.ZERO

func _physics_process(delta):
    velocity.y += gravity
    velocity = move_and_slide(velocity, Vector2.UP)

    if Input.is_action_pressed("ui_right"):
        velocity.x = move_speed
    elif Input.is_action_pressed("ui_left"):
        velocity.x = -move_speed
    else:
        velocity.x = 0

    if Input.is_action_pressed("ui_up"):
        velocity.y = -move_speed
    elif Input.is_action_pressed("ui_down"):
        velocity.y = move_speed
    else:
        velocity.y = 0
        