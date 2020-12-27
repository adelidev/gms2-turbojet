image_speed = 0;

xMove = 1;
yMove = 1;
pScore = 0;
pLives = 3;
level = 1;
alarm[0] = 20;
move = false;

for(i=0; i<=4; i++) {
	global.xPos[i]=40 + (i*32);
}

for(i=0; i<=3; i++) {
	global.yPos[i]=36 + (i*24);
}

