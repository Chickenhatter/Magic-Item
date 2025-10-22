extends CharacterBody2D

@onready var bullet = preload("res://bullet.tscn")
const SPEED = 100.0
const JUMP_VELOCITY = -400.0

###############################################@onready var mana: Mana = $Mana



func _physics_process(_delta: float) -> void:
	var input_vector = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_W"):
		input_vector.y -= 1
	if Input.is_action_pressed("ui_S"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_A"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_D"):
		input_vector.x += 1
	velocity = input_vector * 100
	
	move_and_slide()
	if Input.is_action_pressed("ui_up"):
		if Input.is_action_just_pressed("ui_f"):
			var bullet_temp = bullet.instantiate()
			add_child(bullet_temp)
	if Input.is_action_pressed("ui_down"):
		if Input.is_action_just_pressed("ui_f"):
			var bullet_temp = bullet.instantiate()
			add_child(bullet_temp)
	if Input.is_action_pressed("ui_left"):
		if Input.is_action_just_pressed("ui_f"):
			var bullet_temp = bullet.instantiate()
			add_child(bullet_temp)
	if Input.is_action_pressed("ui_right"):
		if Input.is_action_just_pressed("ui_f"):
			var bullet_temp = bullet.instantiate()
			add_child(bullet_temp)
	#if Input.is_action_pressed("ui_W"):
		#if Input.is_action_just_pressed("ui_f"):
			#var bullet_temp = bullet.instantiate()
			#add_child(bullet_temp)
	#if Input.is_action_pressed("ui_S"):
		#if Input.is_action_just_pressed("ui_f"):
			#var bullet_temp = bullet.instantiate()
			#add_child(bullet_temp)
	#if Input.is_action_pressed("ui_A"):
		#if Input.is_action_just_pressed("ui_f"):
			#var bullet_temp = bullet.instantiate()
			#add_child(bullet_temp)
	#if Input.is_action_pressed("ui_D"):
		#if Input.is_action_just_pressed("ui_f"):
			#var bullet_temp = bullet.instantiate()
			#add_child(bullet_temp)


#func _physics_process(delta: float) -> void:
	#var import_vector = Vextor2.ZERO

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.


	move_and_slide()


	


	
 
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)




	#var WATER := Input.get_axis("ui_up", "ui_down")
	#if WATER:
		#velocity.y = WATER * SPEED + velocity.x
	#else:
		#velocity.y = move_toward(velocity.y, 0, SPEED)
