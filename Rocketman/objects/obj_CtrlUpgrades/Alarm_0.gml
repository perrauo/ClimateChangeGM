/// @description Insert description here
// You can write your code in this editor


with(ship)
{
		planet = instance_nearest(x, y, obj_Planet);
	global.curr_resources_available = planet.resources; 
}