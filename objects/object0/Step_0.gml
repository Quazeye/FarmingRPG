/// @description 

// Update Input
inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);

// Reset Move Variables
moveX = 0;
moveY = 0;

// Intended Movement - not moving yet
moveX = (inputRight - inputLeft) * SPD;
if (moveX == 0){
	moveY = (inputDown - inputUp) * SPD;
}

// Collision Checks
//if(COLLISION){
//	moveX = 0;
//}

// Apply Movement
x += moveX;
y += moveY;