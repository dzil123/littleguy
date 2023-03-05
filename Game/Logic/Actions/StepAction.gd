extends Resource
class_name StepAction

static func do(who: Entity, direction: Vector3i) -> bool:
	if not who.get_parent().is_walkable(who.pos + direction):
		return IslandHopAction.do(who, who.get_parent().get_parent().find_child("StartIsland2"))
	
	who.tween = who.create_tween()
	who.tween.tween_property(who, "position", Vector3(who.pos + direction), 0.1)
	who.tween.play()
	
	who.pos += direction
	return true
