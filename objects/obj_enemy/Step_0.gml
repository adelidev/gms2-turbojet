if global.gameStop == false {
	if i >= 0 {
		if alarm[0] =-1 
		{
			alarm[0] = spd;
		}
	} 
	if place_meeting(x-1,y,obj_player) {
		triggered = true;
		if size <= obj_player.level {
			with(obj_player) {
				image_index = 2;
				layer = layer_create(101);
			} 
			image_index = 2;
		} else if size > obj_player.level {
			with(obj_player) {
				image_index = 4;
				layer = layer_create(0);
			}
			image_index = 3;
		}
	}   
	if place_meeting(x+16,y,obj_player) && obj_player.key_right && triggered == true && size <= obj_player.level {
		with(obj_player) {
			image_index = 3;
			pScore += 1;
		}
		if obj_enemyGen.spawn_minRate > 0 {
			with obj_enemyGen {
				spawn_minRate -= 1;
				spawn_maxRate -= 1;
			}
		}
		instance_destroy(id);
	
	} 
}
