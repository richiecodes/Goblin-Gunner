moveDir = 0;
moveSpd = 2;
xSpd = 0;
ySpd = 0;

centerYOffset = -5;
centerY = y + centerYOffset;

aimDir = 0;
face = 0;
sprite[0] = sPlayerRight;
sprite[1] = sPlayerUp;
sprite[2] = sPlayerLeft;
sprite[3] = sPlayerDown;

sprite_index = sprite[face];


shootTimer = 0;


rifle = {
	sprite: sRifle,
	length: sprite_get_bbox_right(sRifle) - (sprite_xoffset + 10),
	bulletObj: oBullet,
	cooldown: 8,
	offset: -1
}

pistol = {
	sprite: sPistol,
	length: sprite_get_bbox_right(sPistol) - 2,
	bulletObj: oBulletPistol,
	cooldown: 25,
	offset: 0,
}

weapon = pistol;