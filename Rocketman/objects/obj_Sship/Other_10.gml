/// @description in Orbit


//set new target angle
//TODO: rotate smoothly
curr_ship_angle = degtorad(point_direction(planet.x, planet.y, x, y));//for sprite


//ship position in relation to the planet
rel_posX = x - planet.x;
rel_posY = y - planet.y;


////vector from ship toward center of grav of the planet 
ship_to_centerX = -rel_posX;
ship_to_centerY = -rel_posY;


var _x2 = ship_to_centerX;
var _y2 = ship_to_centerY; 

//I'm combining a distance computation with vector normalization and 
//inverse distance squared falloff
grav_mass = planet.mass* GRAV_PULL; //gravitational mass

//magnitude of ship_to_center vector:  power(dot_product(_x2,_y2,_x2,_y2),1.5);
var _f = grav_mass/power(dot_product(_x2,_y2,_x2,_y2),1.5);


//orb_spdX += _x2 * _f;
//orb_spdY += _y2 * _f;    



if(key_right) ||(key_left)
{

//Apply movement & designated spd
if(key_right)
{
	hspd += _x2 * _f;
	vspd += _y2 * _f;   
}
else if(key_left)
{	
	hspd += _x2 * _f* -1;
	vspd += _y2 * _f* -1;   
	
}



}

//Always 0 for both
show_debug_message(hspd);
show_debug_message(vspd);


//detect if not moving
if(key_right && key_left) || (!key_right && !key_left)
{
	//ease out of motion

	if(hspd<.5) && (hspd> -.5) //if between these values stop
	hspd = 0;
	else
	hspd/=ORB_SMOOTH;
	if(vspd<.5) && (vspd > -.5) //if between these values stop
	vspd = 0;
	else
	vspd/=ORB_SMOOTH;
}



scr_planetCollision()//check for collision stop movement


////apply gravity
x += vspd; 
y += vspd; 



if(key_space)
{
  //TODO: Launch ship
}








