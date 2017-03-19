/// @description Init Particles
// You can write your code in this editor

///initialization

//depth
depth = global.middleground;

//create part system
//we created a global var
global.ps_launching = part_system_create();

part_system_depth(global.ps_launching, depth );

//create emiter
global.em_launching = part_emitter_create(global.ps_launching);

//initialize dust particles
part_launching_init();

//The general idea with objects themselves is to try 
//and minimize the amount you have in the room at any given point in time. As for particles, 
//in my experience I have seen it is best to use a separate object for each particle groups.
// For instance, one for player particles, one for effects and so on.