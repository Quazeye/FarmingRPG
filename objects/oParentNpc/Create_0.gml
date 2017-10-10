/// @description 
walkingSpeed = 1;
normalSpeed = 2;
runningSpeed = 10;
SPD = walkingSpeed;

xFrame = 1;
yFrame = 8;

xOffset = sprite_get_xoffset(mask_index); 
yOffset = sprite_get_yoffset(mask_index);

spriteShadow = sCharacterShadow;
spriteBase = -1;
spriteTorso = -1;
spriteLegs = -1;
spriteHair = -1;
spriteFeet = -1;

moveX = 0;
moveY = 0;

alarm[1] = 1;