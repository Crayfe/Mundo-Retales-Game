extends CharacterBody2D

const MOVE_SPEED = 25
const MAX_SPEED = 50
const JUMP_HEIGHT = -110
const UP = Vector2(0, -1)
const GRAVITY = 180

@onready var sprite = $Sprite2D
@onready var animationPlayer = $AnimationPlayer

var direction = -1
# Called when the node enters the scene tree for the first time.
func _ready():
	scale.x = -scale.x#Cambia la orientación del personaje hacia la izquierda
	$AnimationPlayer.play("walk")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_character()
	if not $RayCast2D.is_colliding():
		direction = direction*(-1)
		scale.x = -scale.x

func move_character():
	velocity.y += GRAVITY
	velocity.x = direction*MOVE_SPEED 
	
	#sprite.flip_h = true
	move_and_slide()

func _on_area_2d_body_entered(body):
	if body.get_name() == "player":
		print("Hit")
		body.hit()
