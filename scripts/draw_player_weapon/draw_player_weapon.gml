function draw_player_weapon(){
	var _xOffset = lengthdir_x(weapon.offset, aimDir);
	var _yOffset = lengthdir_y(weapon.offset, aimDir);

	var _weaponYScale = 0.5;

	if (aimDir > 90) && (aimDir < 270) {
		_weaponYScale = -0.5;
	}

	draw_sprite_ext(weapon.sprite, 0, x + _xOffset, centerY + _yOffset, 0.5, _weaponYScale, aimDir, c_white, 1);
}