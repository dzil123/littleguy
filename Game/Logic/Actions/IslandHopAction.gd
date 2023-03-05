extends Resource
class_name IslandHopAction

static func do(who: Entity, island: Node) -> bool:
	var from = who.global_position
	var to = who.get_parent().get_parent().find_child("StartIsland3").global_position
	var to2 = island.global_position
	
	var sprite = who.find_child("Sprite")
	
	who.tween = who.create_tween()
	who.tween.tween_property(who, "global_position", to, 0.75).from(from)
	who.tween.parallel().tween_property(who, "jumpyness", 1.0, 0.75).from(0.0)
	who.tween.tween_property(who, "global_position", to2, 0.75).from(to)
	who.tween.parallel().tween_property(who, "jumpyness", 1.0, 0.75).from(0.0)
	who.tween.play()
	
	who.pos = Vector3i.ZERO
	who.get_parent().remove_child(who)
	island.add_child(who)
	return true
