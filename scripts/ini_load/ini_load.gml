/// @arg file_name
var _file_name = argument0;

global.load = true;

ini_open(_file_name);

var _room_name = ini_read_string("Level", "Room", "");
global.start_x = ini_read_real("Level", "Start x", 0);
global.start_y = ini_read_real("Level", "Start y", 0);

ini_close();

if _room_name == "" 
{
	show_error("No saved data", false);
}

var _room = asset_get_index(_room_name);					// asset_get_index ha bug in html5
room_goto(_room);

