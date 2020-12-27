key_right = keyboard_check_pressed(vk_right);
key_left = keyboard_check_pressed(vk_left);
key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);

if key_right or key_left or key_up or key_down move = true
else move = false
if global.gameStop == false {
	if (move)
	{ 
		if image_index == 0 
			image_index = 1;
		else if image_index >= 1
			image_index = 0;
	
		if xMove < array_length_1d(global.xPos)-1 and xMove > 0{
			xMove += key_right - key_left;
		} else if (xMove = array_length_1d(global.xPos)-1)
			xMove -= key_left;
		else if (xMove = 0)
			xMove += key_right;
	
		if yMove < array_length_1d(global.yPos)-1 and yMove > 0 {
			yMove += key_down - key_up;
		} else if (yMove = array_length_1d(global.yPos)-1) 
			yMove -= key_up;
		else if (yMove = 0)
			yMove += key_down;

	}

	switch pScore {
		case 20: 
			sprite_index = spr_tubojetM;
			level = 3;
			break;
		case 50:
			break;
		case 100:
			break;
	}
		
	if key_right && place_meeting(x+16, y, obj_enemy) && level < obj_enemy.size {
			pLives -= 1;
			
			global.gameStop = true;
			obj_gameControl.alarm[0] = 120;
	}
}



x = global.xPos[xMove];
y = global.yPos[yMove];