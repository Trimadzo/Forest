global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);

global.player_max_health = 4;		// è una variabile globale, sono accessibili ovunque all'interno del gioco
global.player_health = global.player_max_health;		
global.player_max_stamina = 2;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0;
global.player_start_position = i_game_start;

// audio_play_sound(a_music, 10, true);