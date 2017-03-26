/// @description Insert description here
// You can write your code in this editor

//tracks ammount of upgrades
global.upgrd_count[0] = 0;
global.upgrd_count[1] = 0;
global.upgrd_count[2] = 0;

global.upgrd_stacks[0] = ds_stack_create(); //create stack to store upgrades
global.upgrd_stacks[1] = ds_stack_create();
global.upgrd_stacks[2] = ds_stack_create();



ship = instance_find(obj_Sship, 0);

global.curr_resources_available = 6; 
