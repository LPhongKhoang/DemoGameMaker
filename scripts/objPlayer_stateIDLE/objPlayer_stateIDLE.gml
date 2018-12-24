// Get input
objPlayer_getInput();


//check move or idle
if(XAxis != 0 || YAxis != 0){
	Action = MOVE;	
}else{
	Action = IDLE;}

// Get directionn suit with ARROW

	
if (XAxis != 0){
	Direction = HORIZONTAL;
	if(XAxis > 0){
		image_xscale = 1;
	}else  if(XAxis < 0){
		image_xscale = -1;
	}
}

if (YAxis != 0){
	image_xscale = 1;
	if (YAxis > 0){
		Direction = DOWN;
	}else if (YAxis < 0){
		Direction = UP;	
	}
}



var _direction = point_direction(0, 0, XAxis, YAxis);
var _length = Speed * (XAxis!=0 || YAxis!=0); // ==> length = Speed || length = 0


XAxis = lengthdir_x(_length, _direction);
YAxis = lengthdir_y(_length, _direction);

// Check collision with objCollision (XAxis)
if (place_meeting(x+XAxis, y, objCollision))
{
	// check collision (-1, 0, 1)
	while(!place_meeting(x+sign(XAxis), y, objCollision)){
		x += sign(XAxis);
	}
	XAxis = 0;
}
	
if (place_meeting(x, y+YAxis, objCollision))
{
	// check collision (-1, 0, 1)
	while(!place_meeting(x, y+sign(YAxis), objCollision)){
		y += sign(YAxis);
	}
	YAxis = 0;
}

x += XAxis;
y += YAxis;

