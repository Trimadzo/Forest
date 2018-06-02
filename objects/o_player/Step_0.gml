image_speed = 0;
var _animation_speed = 0.6;			// local variable, funziona solo all'interno di questo blocco di codice

if keyboard_check(vk_right) && !place_meeting(x+speed_, y, o_solid) {
	x += speed_;
	sprite_index = s_player_run_right;
	image_speed = _animation_speed;
	image_xscale = 1;
}

if keyboard_check(vk_left) && !place_meeting(x-speed_, y, o_solid) {
	x -= speed_;
	sprite_index = s_player_run_right;
	image_speed = _animation_speed;
	image_xscale = -1;
}

if keyboard_check(vk_up) && !place_meeting(x, y-speed_, o_solid) {
	y -= speed_;
	sprite_index = s_player_run_up;
	image_speed = _animation_speed;
	image_xscale = 1
}

if keyboard_check(vk_down) && !place_meeting(x, y+speed_, o_solid) {
	y += speed_;
	sprite_index = s_player_run_down;
	image_speed = _animation_speed;
	image_xscale = 1
}