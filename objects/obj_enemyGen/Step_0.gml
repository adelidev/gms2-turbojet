spawnTimer = irandom(spawn_maxRate);
if global.gameStop == false {
	if spawnTimer > spawn_minRate{
		if alarm[0] =-1 
		{
			alarm[0] = spawnTimer;
		}
	}
}
xPos = global.xPos[4];
yPos = 0;

