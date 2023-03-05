extends Node3D

@onready var player = $StartIsland/Player;

func _input(event):
	if event.is_action_pressed("ui_left"):
		player_step(Vector3i.LEFT)
	if event.is_action_pressed("ui_right"):
		player_step(Vector3i.RIGHT)
	if event.is_action_pressed("ui_up"):
		player_step(Vector3i.FORWARD)
	if event.is_action_pressed("ui_down"):
		player_step(Vector3i.BACK)

func player_step(direction: Vector3i):
	if player.get_parent().is_walkable(player.pos + direction):
		player.pos += direction
