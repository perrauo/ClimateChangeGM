/// @description update

//check player's input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_space = keyboard_check(vk_space);

//TODO: check if planet exists at all
planet = instance_nearest(x, y, obj_Planet); //access the closest planet

//check if in orbit of a nearby planet
if(planet.ship_inOrbit) //apply planet gravity
{
	//phy_active = false;
	event_user(0); //perform event: ship in orbit

}
else 
{
	//phy_active = true;
	event_user(1); //perform event: not in orbit

}

