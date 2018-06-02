image_speed = 0;
speed_ = 2;								// è una variabile accessibile solo all'interno dell'oggetto (i.e. instance variable)
global.player_health = 4;				// è una global variable, sono accessibile ovunque all'interno del gioco

inventory_[0] = "sword";				// array chiamato inventory_ alla cui posizione 0 ha "sword"
inventory_[1] = "potion";
inventory_[2] = "magic spell";

show_message(inventory_[1]);			// mostra "potion"