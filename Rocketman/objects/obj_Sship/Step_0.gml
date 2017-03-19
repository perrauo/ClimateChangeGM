/// @description update

//check player's input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_space = keyboard_check(vk_space);
key_space_pressed = keyboard_check_pressed(vk_space);


//TODO: check if planet exists at all
planet = instance_nearest(x, y, obj_Planet); //access the closest planet

//show_debug_message(susceptible_to_gravity); //show debug message


//check if in orbit of a nearby planet
if(planet.ship_inOrbit) && susceptible_to_gravity //apply planet gravity is susceptible and oin orbit
{
	
	phy_active = false;
	
	if(!entered_orbit)
	{
		//reset velocity
		hspd = 0;
		vspd = 0;
		
		entered_orbit = true; //entered the plane-s orbit
		left_orbit = false; //left orbit
		
		
		//reset part sys
		EM_TY = noone;
	}
	
	
	event_user(0); //perform event: ship in orbit
	//show_debug_message("inOrbit");

}
else
{
	phy_active = true;
	
	//apply current speed
	if(!left_orbit) //apply initial propulsion to the ship
	{
	susceptible_to_gravity = false;
	alarm_set(0,120); //set alarm susceptible to to gravity
		
	phy_speed_x += hspd/5;
	phy_speed_y += vspd/5;
	
	left_orbit = true;
	entered_orbit = false;
	}
	
	
	event_user(1); //perform event: not in orbit

	//show_debug_message("NOT inOrbit");
}


////if grounded display GUI
if(grounded && !instance_exists(instance_find(obj_Upgrade_Select,0))) //if grounded n select does not exist
{
//show_debug_message("gui")


ui_offset_x = 0
ui_offset_y = 0


ui_offset_amount = 200;

if(planet.x < x) //left
{
 ui_offset_x = -ui_offset_amount;
}
else
if (planet.x > x)//right
{
	ui_offset_x = ui_offset_amount;
}


if(planet.y > y) //below
{
	ui_offset_y = -ui_offset_amount;
}
else
if(planet.y < y) //above
{
ui_offset_y = ui_offset_amount;
}


//make sure it appears on screen

//create UI on landing
UI = instance_create_layer(planet.x+ui_offset_x,planet.y,global.GUI, obj_Upgrade_Select); //
}
//else detroy //after set ammount of second in the air + spacebar


event_user(2); //Wrap around room

///DEPEND ON TYPE
//PARTICLES

//invoke part emiter
scr_part_emit(EM_TY);

//decr amound
if(part_amount_smoke >0)
{
	part_amount_smoke/= 2;
	
}

if(part_amount_fire >0)
{
	part_amount_fire/= 5;
	
}








