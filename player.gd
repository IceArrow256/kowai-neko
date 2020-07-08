extends KinematicBody2D

export (int) var speed = 500

func _physics_process(delta):
	var velocity = Vector2.ZERO
	velocity.x += Input.get_action_strength("ui_right") - Input.get_action_strength('ui_left');
	if velocity.x < 0:
		$Sprite.flip_h = true
	if velocity.x > 0:
		$Sprite.flip_h = false
	velocity = move_and_slide(velocity.normalized() * speed)
