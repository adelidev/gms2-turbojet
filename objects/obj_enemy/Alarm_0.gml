if image_index == 0 
	image_index = 1;
else if image_index >= 1
	image_index = 0;
	
x = global.xPos[--i];
	
if i == 0 {
	x = global.xPos[0];
	alarm[1] = spd;
}

if place_meeting(x+16,y,obj_player) && triggered == true && size > obj_player.level {
	obj_player.pLives -= 1;
	global.gameStop = true;
	obj_gameControl.alarm[0] = 120;
} else if place_meeting(x+16,y,obj_player) && triggered == true && size < obj_player.level {
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