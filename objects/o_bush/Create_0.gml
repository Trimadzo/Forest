initialize_hurtbox_entity();			// voglio che sia una hurtbox
depth = -bbox_bottom;					// returns the y position (within the room) of the bottom of the bounding box for the instance, where the bounding box is defined by the maximum width and height of the mask for the instance
wall_ = instance_create_layer(x, y, "Instances", o_solid);
if is_in_destroyed_list(id)
{
	instance_destroy();
	instance_destroy(wall_);
}