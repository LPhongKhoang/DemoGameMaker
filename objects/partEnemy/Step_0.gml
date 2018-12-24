/// @description Insert description here
// You can write your code in this editor
targetX = objPlayer.x - x;
targetY = objPlayer.y - y;

var _xDirection = sign(targetX) * velocity;
var _yDirection = sign(targetY) * velocity;


if(place_meeting(x+_xDirection, y, objPlayer)){
	while(!place_meeting(x+_xDirection, y, objPlayer)){
		x+= sign(_xDirection);	
	}
	_xDirection = 0;
}

if(place_meeting(x, y+ _yDirection, objPlayer)){
	while(!place_meeting(x, y+_yDirection, objPlayer)){
		y+= sign(_yDirection);	
	}
	_yDirection = 0;
}


x += _xDirection;
y += _yDirection;
