image_speed = 0;
var _animation_speed = 0.6;			// local variable, funziona solo all'interno di questo blocco di codice

if keyboard_check(vk_right) && !place_meeting(x+speed_, y, o_solid) {
	x += speed_;
	direction_facing_ = dir.right;
	image_speed = _animation_speed;
	image_xscale = 1;
}

if keyboard_check(vk_left) && !place_meeting(x-speed_, y, o_solid) {
	x -= speed_;
	direction_facing_ = dir.left;
	image_speed = _animation_speed;
	image_xscale = -1;
}

if keyboard_check(vk_up) && !place_meeting(x, y-speed_, o_solid) {
	y -= speed_;
	direction_facing_ = dir.up;
	image_speed = _animation_speed;
	image_xscale = 1
}

if keyboard_check(vk_down) && !place_meeting(x, y+speed_, o_solid) {
	y += speed_;
	direction_facing_ = dir.down;
	image_speed = _animation_speed;
	image_xscale = 1
}

sprite_index = sprite_[player.move, direction_facing_];