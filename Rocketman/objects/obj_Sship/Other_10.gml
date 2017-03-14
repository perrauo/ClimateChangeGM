/// @description in Orbit

//set new target angle
//TODO: rotate smoothly
curr_ship_angle = degtorad(point_direction(planet.x, planet.y, x, y));//for sprite

//ship position in relation to the planet
rel_posX = x - planet.x;
rel_posY = y - planet.y;

////vector from ship toward center of grav of the planet 
var ship_to_centerX = -rel_posX;
var ship_to_centerY = -rel_posY;

//constitute the basis for our gravity vector
var grav_pullx = ship_to_centerX;
var grav_pully = ship_to_centerY; 

//I'm combining a distance computation with vector normalization and 
//inverse distance squared falloff

//planet.mass 5, GRAV_PULL = 25
grav_mass = planet.mass* GRAV_PULL; //gravitational mass

//magnitude of ship_to_center vector:  power(dot_product(_x2,_y2,_x2,_y2),1.5);
var _force = grav_mass/power(dot_product(grav_pullx, grav_pully, grav_pullx, grav_pully),1.5);


//find normal vector to grav_pull for movement along the orbit
var unit_vec = scr_getUnitVector(grav_pullx, grav_pully)
var orb_dirx = unit_vec[1];
var orb_diry = -unit_vec[0];
 

if(key_right) ||(key_left)
{

//Apply movement & designated spd
if(key_right)
{
	  hspd += orb_dirx*ORB_SPD;
	  vspd += orb_diry*ORB_SPD;
}
else if(key_left)
{	
	hspd += orb_dirx*-ORB_SPD;
	vspd += orb_diry*-ORB_SPD;
	
}


}



///LAUNCHING SHIP

if(grounded)
{
	show_debug_message("GROUNDED");
	
	if(key_space) //direction is chosen on the ground only on first frame
	{
	var unit_vec = scr_getUnitVector(rel_posX, rel_posY)
	//counter gravity unit vector
	var launch_dirx = -unit_vec[0];
	var launch_diry = -unit_vec[1];

	if(key_space)
	{
	   hspd += grav_pullx * -LAUNCH_SPD;
	   vspd += grav_pully * -LAUNCH_SPD;
	}
	}

}
else //apply grav if not grounded & terminal velocity is reached
{
	//apply gravity
	hspd += grav_pullx * _force;
	vspd += grav_pully * _force; 

}






scr_planetCollision()//check for collision stop movement




////apply movement
x += hspd; 
y += vspd; 

