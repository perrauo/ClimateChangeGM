/// @description REFERENCE CODE
// You can write your code in this editor


/// @description in Orbit

//ship position in relation to the planet
rel_posX = x - planet.x;
rel_posY = y - planet.y;


////vector from ship toward center of grav of the planet 
ship_to_centerX = -rel_posX;
ship_to_centerY = -rel_posY;

//determine the correct vector to represent gravity
var unit_vec = scr_getUnitVector(ship_to_centerX, ship_to_centerY);
grav_pullX = unit_vec[0]*GRAV_PULL;
grav_pullY = unit_vec[1]*GRAV_PULL;


//set new target angle
//TODO: rotate smoothly
curr_ship_angle = degtorad(point_direction(planet.x, planet.y, x, y));



//Where ORB_VEC is the constant vector (0,1)
var rotated_vec = scr_rotateVector(ORB_VEC_X,ORB_VEC_Y,curr_ship_angle); //rotate base vector
orb_dirX = rotated_vec[0];
orb_dirY = rotated_vec[1];

	show_debug_message("XDir")
	show_debug_message(orb_dirX)
	show_debug_message("YDir")
	show_debug_message(orb_dirY)


if(key_right) ||(key_left)
{

//Apply movement & designated spd
if(key_right)
{
	//scaled by ORB_SPD
	orb_spdX = orb_dirX*ORB_SPD;
	orb_spdY = orb_dirY*ORB_SPD;
}
else if(key_left)
{	
	//scaled by -ORB_SPD
	orb_spdX = orb_dirX*-ORB_SPD;
	orb_spdY = orb_dirY*-ORB_SPD;
	
}



}

//detect if not moving
if(key_right && key_left) || (!key_right && !key_left)
{
	//ease out of motion

	if(orb_spdX<.5) && (orb_spdX > -.5) //if between these values stop
	orb_spdX = 0;
	else
	orb_spdX/=ORB_SMOOTH;
	if(orb_spdY<.5) && (orb_spdY > -.5) //if between these values stop
	orb_spdY = 0;
	else
	orb_spdY/=ORB_SMOOTH;
}



scr_planetCollision()//check for collision stop movement


//apply gravity
x += grav_pullX; 
y += grav_pullY; 


////apply gravity
x += orb_spdX; 
y += orb_spdY; 



if(key_space)
{
  //TODO: Launch ship
}








