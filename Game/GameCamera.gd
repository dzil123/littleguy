extends Camera3D

func _process(delta):
	var player = $"../Logic".find_child("Player")
	
	var weight = 0
	self.global_position = player.global_position * weight
	self.global_position += player.get_parent().global_position
	self.global_position /= weight + 1;
	
	self.global_position += Vector3.BACK * 10
