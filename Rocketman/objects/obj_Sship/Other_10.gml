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
//negative rel_posY is necessary as game maker inverts the y axis
var ang = arcsin(-rel_posY/(sqrt(sqr(rel_posX)+sqr(rel_posY)))); 

curr_ship_angle = scr_adjustQuadrant(ang);


var rotated_vec = scr_rotateVector(ORB_VEC_X,ORB_VEC_Y,curr_ship_angle); //rotate base vector
unit_vec = scr_getUnitVector(rotated_vec[0], rotated_vec[1]);
orb_dirX = unit_vec[0];
orb_dirY = unit_vec[1];


if(key_right) ||(key_left)
{

//Apply movement & designated spd
if(key_right)
{
	//var unit_vec = scr_getUnitVector(orb_spdX, orb_spdY);
	orb_spdX = orb_dirX*ORB_SPD;
	orb_spdY = orb_dirY*ORB_SPD;
}
else if(key_left)
{	
		
	orb_spdX = orb_dirX*-ORB_SPD;
	orb_spdY = orb_dirY*-ORB_SPD;
	
}




}

//detect if not moving
if(key_right && key_left) || (!key_right && !key_left)
{
	orb_spdX = 0;
	orb_spdY = 0;
}



scr_planetCollision()//check for collision and limmit movement


////apply gravity
x += orb_spdX; 
y += orb_spdY; 

//apply gravity
x += grav_pullX; 
y += grav_pullY; 



if(key_space)
{

}








