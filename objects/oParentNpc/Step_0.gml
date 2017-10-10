/// @description 

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