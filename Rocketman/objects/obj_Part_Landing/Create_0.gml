/// @description Init Particles
// You can write your code in this editor

///initialization

//depth
depth = -10001;

//create part system
//we created a global var
global.ps_landing = part_system_create();

part_system_depth(global.ps_landing, depth );

//create emiter
global.em_landing = part_emitter_create(global.ps_landing);

//initialize dust particles
part_landing_init();

//The general idea with objects themselves is to try 
//and minimize the amount you have in the room at any given point in time. As for particles, 
//in my experience I have seen it is best to use a separate object for each particle groups.
// For instance, one for player particles, one for effects and so on.