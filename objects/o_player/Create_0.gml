initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();
image_speed = 0;
acceleration_ = 0.5;						// è una variabile accessibile solo all'interno dell'oggetto (i.e. instance variable)
max_speed_ = 1.5;
direction_facing_ = dir.right;
roll_directions_ = 0;
roll_speed_ = 2;
found_item_sprite_ = noone;

alarm[1] = global.one_second;				// altrimenti se carichiamo partita la stamina non aumenta subito in automatico

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}

enum dir {									// è importante questo ordine perché se moltiplichiamo per 90 otteniamo le direzione di GameMaker
	right,
	up,
	left,
	down
}

starting_state_ = player.move;
state_ = player.move;

// Sprite move lookup table
sprite_[player.move,dir.right] = s_player_run_right;
sprite_[player.move,dir.up] = s_player_run_up;
sprite_[player.move,dir.left] = s_player_run_right;
sprite_[player.move,dir.down] = s_player_run_down;

sprite_[player.sword,dir.right] = s_player_attack_right;
sprite_[player.sword,dir.up] = s_player_attack_up;
sprite_[player.sword,dir.left] = s_player_attack_right;
sprite_[player.sword,dir.down] = s_player_attack_down;

sprite_[player.evade,dir.right] = s_player_roll_right;
sprite_[player.evade,dir.up] = s_player_roll_up;
sprite_[player.evade,dir.left] = s_player_roll_right;
sprite_[player.evade,dir.down] = s_player_roll_down;

sprite_[player.hit,dir.right] = s_player_run_right;
sprite_[player.hit,dir.up] = s_player_run_up;
sprite_[player.hit,dir.left] = s_player_run_right;
sprite_[player.hit,dir.down] = s_player_run_down;

sprite_[player.found_item,dir.right] = s_player_found_item;
sprite_[player.found_item,dir.up] = s_player_found_item;
sprite_[player.found_item,dir.left] = s_player_found_item;
sprite_[player.found_item,dir.down] = s_player_found_item;

sprite_[player.bomb,dir.right] = s_player_run_right;
sprite_[player.bomb,dir.up] = s_player_run_up;
sprite_[player.bomb,dir.left] = s_player_run_right;
sprite_[player.bomb,dir.down] = s_player_run_down;



//inventory_[0] = "sword";					// array 1D chiamato inventory_ alla cui posizione 0 ha "sword"
//inventory_[1] = "potion";
//inventory_[2] = "spell";
//inventory_[3] = "note";

//show_message(inventory_[1]);				// mostra "potion"

//inventory_[0, 0] = "sword";				// array 2D chiamato inventory_ alla cui posizione 0 ha "sword"
//inventory_[1, 0] = "potion";
//inventory_[0, 1] = "spell";
//inventory_[1, 1] = "note";

//show_message(inventory_[0, 1]);

//enum item {								// enum è global variable che può contenere solo int
//	sword,									// senza numeri conta da 0, ma se metto sword = 10 conta da 10 (i.e. spell è 12)
//	potion,								
//	spell,
//	note
//}

//inventory_[item.sword] = "sword";			// array 1D chiamato inventory_ alla cui posizione 0 ha "sword"
//inventory_[item.potion] = "potion";
//inventory_[item.spell] = "spell";
//inventory_[item.note] = "note";

//show_message(inventory_[item.spell]);