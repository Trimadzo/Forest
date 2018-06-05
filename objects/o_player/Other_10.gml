/// @description Move State
image_speed = 0;
var _x_input = o_input.right_ - o_input.left_;		// local variable, funziona solo all'interno di questo blocco di codice
var _y_input = o_input.down_ - o_input.up_;
var _input_direction = point_direction(0, 0, _x_input, _y_input);
roll_directions_ = direction_facing_ * 90;								// Quando è fermo

if _x_input == 0 && _y_input == 0
{
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
}
else 
{
	image_speed = 0.6;
	if _x_input !=0
	{
	image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_directions_ = direction_facing_ * 90;
}

inventory_use_item(o_input.action_one_pressed_, global.item[0]);
inventory_use_item(o_input.action_two_pressed_, global.item[1]);

move_movement_entity(false);