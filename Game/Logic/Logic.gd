extends Node3D

@onready var player = $StartIsland/Player;

func _process(delta: float):
	for entity in get_tree().get_nodes_in_group("Entities"):
		if entity.is_tweening():
			return
		
	var success = false
	
	if Input.is_action_pressed("ui_left"):
		success = player_step(Vector3i.LEFT)
	elif Input.is_action_pressed("ui_right"):
		success = player_step(Vector3i.RIGHT)
	elif Input.is_action_pressed("ui_up"):
		success = player_step(Vector3i.FORWARD)
	elif Input.is_action_pressed("ui_down"):
		success = player_step(Vector3i.BACK)
	
	if success:
		run_npc_turns()

func run_npc_turns():
#	for npc in player.get_parent().get_children():
#		if not npc is Entity:
#			continue
#		if npc == player:
#			continue
#		print(npc)
#		StepAction.do(npc, Vector3i.UP)
	pass

func player_step(direction: Vector3i):
	return StepAction.do(player, direction)
