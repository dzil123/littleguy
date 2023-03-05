extends Node3D

# Stores the state of the island.
# Doesn't have any logic.

func is_walkable(pos: Vector3i) -> bool:
	return $%GridMap.get_cell_item(pos) >= 0
