extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var markerCount = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Marker_area_entered( area ):
	if $"../Player".currentMarker == self.markerCount:
		$"../Player".currentMarker += 1
	pass # replace with function body
