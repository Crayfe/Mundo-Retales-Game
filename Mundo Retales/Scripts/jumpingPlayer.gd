extends CharacterBody2D

const MOVE_SPEED = 25
const MAX_SPEED = 50
const JUMP_HEIGHT = -110
const UP = Vector2(0, -1)
const GRAVITY = 180

@onready var sprite = $Sprite2D
@onready var animationPlayer = $AnimationPlayer


func _physics_process(delta):
	velocity.y += GRAVITY * delta
	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = false
		animationPlayer.play("walk")
		velocity.x = min(velocity.x + MOVE_SPEED, MAX_SPEED)
	elif Input.is_action_pressed("ui_left"):
		sprite.flip_h = true
		animationPlayer.play("walk")
		velocity.x = max(velocity.x - MOVE_SPEED, -MAX_SPEED)
	else:
		velocity.x = 0
		animationPlayer.play("idle")
		
	if is_on_floor():
		if Input.is_action_pressed("ui_accept"):
			velocity.y = JUMP_HEIGHT
			$playerJump.play()
			
	move_and_slide()
	
func hit():
	print("Ay...")
	$playerHit.play()
	
	
