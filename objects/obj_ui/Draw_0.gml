draw_set_colour($88C070);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_font(fnt_arial);
draw_text(10, 10, "eaten: " + string(obj_player.pScore));
draw_text(10, 20, "lives: " + string(obj_player.pLives));

if global.gameStop == true 
	draw_text(60, 20, "-1");