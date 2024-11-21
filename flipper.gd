extends CharacterBody2D

@export var max_angle_deg := 15
@export var min_angle_deg := 45
@export var speed := 20
@export var is_left := true


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _physics_process(delta: float) -> void:
	if is_left:
		if rotation <= - deg_to_rad(max_angle_deg):
			rotation = - deg_to_rad(max_angle_deg)

		if rotation >= deg_to_rad(min_angle_deg):
			rotation = deg_to_rad(min_angle_deg)

		if Input.is_action_pressed("ui_left"):
			rotation -= (speed * delta)
		else:
			rotation += (speed * delta)

		rotation = rotation
	else:
		if rotation <= - deg_to_rad(min_angle_deg):
			rotation = - deg_to_rad(min_angle_deg)

		if rotation >= deg_to_rad(max_angle_deg):
			rotation = deg_to_rad(max_angle_deg)

		if Input.is_action_pressed("ui_right"):
			rotation += (speed * delta)
		else:
			rotation -= (speed * delta)

		rotation = rotation
		
