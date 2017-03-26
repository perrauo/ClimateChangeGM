/// @description init

layer = global.foreground;

//Closest planey

planet = noone;



///////////////////////////////////VARS
curr_ship_angle = 0; //angles

target_ship_angle = 0;
angle_to_rotate = 0;

left_orbit = false;
entered_orbit = true;

susceptible_to_gravity = true;


//////////////////////////////////PHYSICS
//hspd and vspd
hspd = 0;
vspd = 0;

grav_mass = 1; //gravitational mass of the ship
grounded = false;

///////////////////////////////CONSTANTS

//force of propulsion
LAUNCH_SPD = .3; //propulsion spd
//constants
ORB_SPD = .2; 
ORB_SMOOTH = 1.08;

GRAV_PULL = 500; //force of the pull

///////////////////////OUT OF ORBIT VARS

//physics
_speed =.1;


//Particles

part_stop_emit_launching = true;
part_amount_smoke = 100;
part_amount_fire = 20;


enum PART_EMIT_TYPE ///part sys type
{
	LAUNCHING,
	SMOKE,
	LANDING
}

EM_TY = noone; //emit type



/////UI

UI = 0;

















