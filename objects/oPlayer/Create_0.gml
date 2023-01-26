moveDir = 0;
moveSpd = 2;
xSpd = 0;
ySpd = 0;

centerYOffset = -5;
centerY = y + centerYOffset;
weaponOffsetDist = -1;
aimDir = 0;
face = 0;
sprite[0] = sPlayerRight;
sprite[1] = sPlayerUp;
sprite[2] = sPlayerLeft;
sprite[3] = sPlayerDown;

sprite_index = sprite[face];


shootTimer = 0;
shootCooldown = 8;
bulletObj = oBullet;
weaponLength = sprite_get_bbox_right(sGun) - (sprite_xoffset + 10);