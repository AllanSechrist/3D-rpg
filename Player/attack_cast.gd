extends RayCast3D

func deal_damage() -> void:
	if not is_colliding():
		return
	var collider = get_collider()
	
	if collider is Enemy:
		collider.health_component.take_damage(15.0)
		# add exception prevents the raycast from "reporting" more than once.
		# In short, it forces the raycast to collide with something only once.
		add_exception(collider) 
		
