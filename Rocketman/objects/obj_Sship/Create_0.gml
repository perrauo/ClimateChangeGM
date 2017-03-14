/// @description init
target_ship_angle = 0;
curr_ship_angle = 0;
angle_to_rotate = 0;


//vector of propulsion
PROP_SPD = 2; //propulsion spd
prop_spdX = 1;
prop_spdY = 0;

////vector of spd along the planet's surface (initially standard vector along x axis)
//is transformed in the step event

//constants
ORB_SPD = 10; 
ORB_VEC_X = 0;//base vector we rotate
ORB_VEC_Y = 1;

ORB_SMOOTH = 1.08;

//hspd and vspd
hspd = 0;
vspd = 0;



////vector pulling down toward a circle is 
GRAV_PULL = 5; //force of the pull
grav_pullX = 0;
grav_pullY = 1;


grav_mass = 0; //gravitational mass of the ship


