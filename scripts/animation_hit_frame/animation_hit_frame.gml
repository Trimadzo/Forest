///@arg frame
var _frame = argument0;
var _speed = global.one_second/sprite_get_speed(sprite_index);			// sprite_get_speed ha bug in html5
return (image_index >= _frame+1 - image_speed/_speed) and (image_index < _frame+1);
