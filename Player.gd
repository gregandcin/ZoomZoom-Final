extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var power = 10
var turnPower = 5
var currentMarker = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _physics_process(delta):
	if Input.is_action_pressed("player_acceleration"):
		apply_impulse(Vector2(0, 0), Vector2(cos(self.rotation), sin(self.rotation)) * power)
		#print("fast")
	elif Input.is_action_pressed("player_decelleration"):
		apply_impulse(Vector2(0, 0), Vector2(cos(self.rotation), sin(self.rotation)) * -power)
	if Input.is_action_pressed("turn_left"):
		#self.rotation_deg -= 5
		self.set_angular_velocity(-turnPower)
	elif Input.is_action_pressed("turn_right"):
		#self.rotation_deg += 5
		set_angular_velocity(turnPower)
	else:
		self.set_angular_velocity(0)
	pass