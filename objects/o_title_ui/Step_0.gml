if o_input.up_pressed_
{
	index_ = max(--index_, 0);				// se faccio x--, passo x e poi ottengo x-1; se faccio --x, passo e ottengo x-1
}

if o_input.down_pressed_
{
	index_ = min(++index_, option_length_-1);
}

if o_input.return_pressed_
{
	switch (index_)
	{
		case options.continue_game:
			show_debug_message("Continua");
			break;
		
		case options.new_game:
			room_goto(r_start);
			break;
			
		case options.credits:
			show_debug_message("Crediti");
			break;
			
		case options.quit:
			game_end();
			break;
	}
}