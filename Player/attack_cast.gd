extends RayCast3D

func deal_damage() -> void:
	if not is_colliding():
		return
	var collider = get_collider()
	print(collider)
	# add exception prevents the raycast from "reporting" more than once.
	# In short, it forces the raycast to collide with something only once.
	add_exception(collider) 
	
