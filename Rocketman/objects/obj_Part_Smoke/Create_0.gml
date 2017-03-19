/// @description Init
// You can write your code in this editor

//depth
depth = -10001;

//create part system
//we created a global var
global.ps_smoke = part_system_create();

part_system_depth(global.ps_smoke, depth );

//create emiter
global.em_smoke = part_emitter_create(global.ps_smoke);

//initialize dust particles
part_smoke_init();

//The general idea with objects themselves is to try 
//and minimize the amount you have in the room at any given point in time. As for particles, 
//in my experience I have seen it is best to use a separate object for each particle groups.
// For instance, one for player particles, one for effects and so on.