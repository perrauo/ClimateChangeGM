/// @description Not In Orbit


curr_ship_angle = degtorad(point_direction(x, y, mouse_x, mouse_y));//for sprite;



//update ship pos based on mouse
if(x < mouse_x-10)
{
	phy_speed_x += _speed;
		
}
else if(x > mouse_x+10)
{
	phy_speed_x -= _speed;
		
}
else if(x > mouse_x-10 && x < mouse_x+10)
{
	phy_speed_x = phy_speed_x/1.15 ;
}


if(y < mouse_y-10)
{
	phy_speed_y += _speed;

}

else if(y > mouse_y+10)
{
	phy_speed_y -= _speed;
		
}
else if(y > mouse_y-10 && y < mouse_y+10)
{
	phy_speed_y = phy_speed_y/1.15; ;
}


//Emit particles

 //set part type to emit and alarm to stop
if(EM_TY == noone)
EM_TY = PART_EMIT_TYPE.SMOKE;




