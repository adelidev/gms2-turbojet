with (obj_player) {
	image_index = 1; 
	if key_right {
		with(other) instance_destroy();
		image_index = 2;
	}
}