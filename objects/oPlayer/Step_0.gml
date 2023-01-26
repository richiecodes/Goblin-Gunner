keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
shootKey = mouse_check_button(mb_left);

var _horizKey = keyRight - keyLeft;
var _vertKey = keyDown - keyUp;
moveDir = point_direction(0,0,_horizKey,_vertKey);

var _spd = 0;
var _inputLevel = point_distance(0,0,_horizKey,_vertKey);
_inputLevel = clamp(_inputLevel, 0, 1);
_spd = moveSpd * _inputLevel;


xSpd = lengthdir_x(_spd, moveDir);
ySpd = lengthdir_y(_spd, moveDir);

if (place_meeting(x + xSpd, y, oWall)) xSpd = 0;

if (place_meeting(x, y + ySpd, oWall)) ySpd = 0;

x += xSpd;
y += ySpd;

depth = -bbox_bottom;

centerY = y + centerYOffset;
aimDir = point_direction(x, centerY,mouse_x,mouse_y);

face = round(aimDir / 90);
if face == 4 face = 0;

if xSpd == 0 && ySpd == 0 image_index = 0;

sprite_index = sprite[face];

if shootTimer > 0 shootTimer--;
if shootKey && shootTimer <= 0 {
	audio_play_sound(sndGunShoot, 5, false, 0.5);
	shootTimer = shootCooldown;
	var _xOffset = lengthdir_x(weaponLength + weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponLength + weaponOffsetDist, aimDir);
	var _bulletInst = instance_create_depth(x + _xOffset, centerY + _yOffset, depth-100, bulletObj);
	with (_bulletInst) {
		var _yScale = 1;
		dir = other.aimDir;
		image_angle = dir;
		if image_angle > 90 && image_angle < 270 _yScale = -1;
		image_yscale = _yScale;
	}
}