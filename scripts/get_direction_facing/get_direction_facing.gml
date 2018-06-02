/// @param direction

var _direction = argument0;
direction_facing_ = round(_direction / 90);
if direction_facing_ == 4 {					// caso 360°
	direction_facing_ = 0;
}