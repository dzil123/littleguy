extends Sprite3D

var pos : Vector3i

func _ready():
	pos = Vector3i(round(position.x), 0, round(position.z))

func _process(delta):
	position = pos
