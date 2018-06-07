var _last_index = index_;
if o_input.up_pressed_
{
	index_ = max(--index_, 0);				// se faccio x--, passo x e poi ottengo x-1; se faccio --x, passo e ottengo x-1
}

if o_input.down_pressed_
{
	index_ = min(++index_, option_length_-1);
}

if _last_index != index_
{
	audio_play_sound(a_menu_move, 1, false);
}

if o_input.return_pressed_
{
	switch (index_)
	{
		case options.continue_game:
			audio_play_sound(a_menu_select, 3, false);
			ini_load("save_data.ini");
			break;
		
		case options.new_game:
			audio_play_sound(a_menu_select, 3, false);
			room_goto(r_start);
			break;
			
		case options.credits:
			audio_play_sound(a_menu_select, 3, false);
			show_debug_message("Crediti");
			break;
			
		case options.quit:
			game_end();
			break;
	}
}