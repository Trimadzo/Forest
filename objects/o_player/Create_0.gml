image_speed = 0;
speed_ = 2;									// è una variabile accessibile solo all'interno dell'oggetto (i.e. instance variable)
direction_facing_ = dir.right;
global.player_health = 4;					// è una global variable, sono accessibile ovunque all'interno del gioco

enum player {
	move
}

enum dir {									// è importante questo ordine perché se moltiplichiamo per 90 otteniamo le direzione di GameMaker
	right,
	up,
	left,
	down
}

// Sprite move lookup table
sprite_[player.move,dir.right] = s_player_run_right;
sprite_[player.move,dir.up] = s_player_run_up;
sprite_[player.move,dir.left] = s_player_run_right;
sprite_[player.move,dir.down] = s_player_run_down;

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