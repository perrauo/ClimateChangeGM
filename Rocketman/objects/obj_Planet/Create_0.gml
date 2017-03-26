/// @description Init

layer = global.middleground;

///UPGRADES MECHANIC
resources = 6;


///////////PHYSISC
//TODO change depending on the planet's size
orbit_size = 256; //size of the circleof influence

//sprite
ship = instance_find(obj_Sship, 0);

//Properties
ship_inOrbit = false

//planet mass
mass = 30;


/////////////PLanet types
TYPE = PLANET_TYPES.TYPE1;
//pplanet type
enum PLANET_TYPES
{
TYPE1, TYPE2, TYPE3
}

/////////SPRITE TRANSFORMATION

sprite_alive = 0; //sprite for alive
sprite_arid = 0; // sprite for arid

alpha_alive = 0; //for transition
alpha_arid = 0;


//pop sprites
sprite_pop_happy = 0;
sprite_pop_sad = 0;

population_happy = true;

tim1 = 0;
lim1 = 1;
anim_frame1 = 0;

tim2 = 0;
lim2 = 1;
anim_frame2 = 0;

tim3 = 0;
lim3 = 2;
anim_frame3 = 0;


