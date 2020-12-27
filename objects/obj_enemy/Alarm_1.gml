if place_meeting(x,y,obj_player) && triggered == true && size > obj_player.level {
	obj_player.pLives -= 1;
	global.gameStop = true;
	obj_gameControl.alarm[0] = 120;
} else if place_meeting(x,y,obj_player) && triggered == true && size < obj_player.level {
	obj_player.pScore += 1;
	obj_player.image_index = 3;
	instance_destroy(id);
}
	

instance_destroy(self);