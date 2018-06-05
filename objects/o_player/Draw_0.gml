draw_sprite(s_medium_shadow, 0, x, y);
draw_self();			// il draw event sovrascrive ogni draw => disegno player
draw_self_flash(c_white, 8, alarm[0]);