event_inherited();							// funzione che chiama tutto il codice del create del genitore, senza questo il create del genitore viene sostituito

initialize_movement_entity(0.5, 0.5, o_solid);

enum porcupine {
	hit,
	idle,
	move,
	attack,
	wait
}

starting_state_ = porcupine.idle;
state_ = starting_state_;

image_index = 0;
image_xscale = choose (1, -1);					// sceglie una direzione random

alarm[1] = random_range(0, 1) * game_get_speed(gamespeed_fps);