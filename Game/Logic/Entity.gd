extends Node3D
class_name Entity

var jumpyness : float = 0
var pos : Vector3i
var tween : Tween = null

func _ready():
	pos = Vector3i(round(position.x), 0, round(position.z))

func is_tweening():
	return tween != null and tween.is_running()

func _process(delta):
	$Sprite.position.y = -jumpyness * (jumpyness - 1) * 6
	if !is_tweening():
		position = pos
		pass
