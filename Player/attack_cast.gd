extends RayCast3D

func deal_damage(damage: float, crit_chance: float) -> void:
	if not is_colliding():
		return
	var is_critical = randf() <= crit_chance
	var collider = get_collider()
	
	if collider is Enemy:
		collider.health_component.take_damage(damage, is_critical)
		# add exception prevents the raycast from "reporting" more than once.
		# In short, it forces the raycast to collide with something only once.
		add_exception(collider) 
		
