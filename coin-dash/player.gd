extends Area2D

@export var speed = 350
var velocity = Vector2.ZERO
var screensize = Vector2(480, 720)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# this function returns "True" on the pressed arrow
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# constant velocity
	position += velocity * speed * delta
	
	# limit position to a rectangle with clamp (clip)
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	
