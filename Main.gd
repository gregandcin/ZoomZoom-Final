extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var maxMarkers = 0
export var levelCount = 1

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if $"Player".currentMarker == self.maxMarkers:
		if levelCount == 1:
			get_tree().change_scene("res://Level2.tscn")
		elif levelCount == 2:
			get_tree().change_scene("res://Level3.tscn")
		elif levelCount == 3:
			$"Player/Camera2D/you_win".visible = true
			print("Win")
	pass
