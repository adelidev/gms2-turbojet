global.gameStop = false;
instance_destroy(obj_enemy);

if obj_player.pLives <= 0
	game_restart();
