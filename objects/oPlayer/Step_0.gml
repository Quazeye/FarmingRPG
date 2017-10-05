/// @description 

// Update Input
inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);
inputWalk = keyboard_check(vk_alt);
inputRun = keyboard_check(vk_shift);

// Alter Speed
if (inputWalk || inputRun){
	SPD = abs(inputWalk * walkingSpeed - inputRun * runningSpeed);
} else {
	SPD = normalSpeed;
}

// Reset Move Variables
moveX = 0;
moveY = 0;

// Intended Movement - not moving yet
moveX = (inputRight - inputLeft) * SPD;
if (moveX == 0){
	moveY = (inputDown - inputUp) * SPD;
}

// Collision Checks
// Horizontal
if (moveX != 0) {
	
		if (place_meeting(x + moveX, y, oCollision)){
			repeat(abs(moveX)){
				if (!place_meeting(x + sign(moveX), y, oCollision)){
					x += sign(moveX);
				} else {
					break;
				}
			}
			moveX = 0;
		}
}

// Vertical
if (moveY != 0) {
	if (place_meeting(x, y + moveY, oCollision)){
		repeat(abs(moveY)){
			if (!place_meeting(x, y + sign(moveY), oCollision)){
				y += sign(moveY);
			} else {
				break;
			}
		}
		moveY = 0;
	}
}

// Apply Movement
x += moveX;
y += moveY;