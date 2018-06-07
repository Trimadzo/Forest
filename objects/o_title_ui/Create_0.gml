enum options
{
	continue_game,
	new_game,
	credits,
	quit
}

menu_color_ = make_color_rgb(247, 243, 142);		// 185, 248, 216
menu_dark_color_ = make_color_rgb(126, 127, 81);	// 58, 173, 133

option_[options.continue_game] = "Continua";
option_[options.new_game] = "Nuova partita";
option_[options.credits] = "Crediti";
option_[options.quit] = "Esci";

option_length_ = array_length_1d(option_);

index_ = options.continue_game;