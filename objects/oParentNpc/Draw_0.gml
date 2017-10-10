/// @description 
var animLength = 9;
var frameSize = 64;
var animSpeed = 12;

if (moveX < 0) {
	yFrame = 9;
} else if (moveX > 0) {
	yFrame = 11;
} else if (moveY < 0) {
	yFrame = 8;
} else if (moveY > 0) {
	yFrame = 10;
} else {
	xFrame = 0;
}

var xx = x - xOffset;
var yy = y - yOffset;

//Increment xFrame for Animation
if(xFrame + (animSpeed / 60) < animLength) {
	xFrame += animSpeed / 60;
} else {
	xFrame = 1;
}

// Draw Character Shadow
if(spriteShadow != -1) {
	draw_sprite(spriteShadow, 0, x, y);
}

// Draw Character Base
if(spriteBase != -1) {
	draw_sprite_part(spriteBase, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}

// Draw Character Feet
if(spriteFeet != -1) {
	draw_sprite_part(spriteFeet, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}

// Draw Character Legs
if(spriteLegs != -1) {
	draw_sprite_part(spriteLegs, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}

// Draw Character Shirt
if(spriteTorso != 1) {
	draw_sprite_part(spriteTorso, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}

// Draw Character Hair
if(spriteHair != 1) {
	draw_sprite_part(spriteHair, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);
}

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);