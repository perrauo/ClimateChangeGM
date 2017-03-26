/// @description step

//Detect if player isin the planet's orbit
ship_inOrbit = point_in_circle(ship.x,ship.y,x,y,orbit_size);


switch(TYPE) //Planet specific event (text n sprites)
{
case PLANET_TYPES.TYPE1:
event_user(1); //event user 1
break;
case PLANET_TYPES.TYPE2:
event_user(2); //event user 1
break;
case PLANET_TYPES.TYPE3:
event_user(3); //event user 1
break;

}

//update resources
//update only if player is in orbit
if(ship_inOrbit)
resources = global.curr_resources_available;


//Update resources/ alpha
switch(resources) //Planet specific event (text n sprites) //resources left
{
	case 0:
	alpha_arid = 1;
	alpha_alive = 0;
	population_happy = false;
	break;
	case 1:
	alpha_arid = .8334;
	alpha_alive = .1666;
	population_happy = false;
	break;
	case 2:
	alpha_arid = .66666;
	alpha_alive = .33333;
	population_happy = false;
	break;
	case 3:
	alpha_alive = alpha_arid = .5;
	population_happy = true;
	break;
	case 4:
	alpha_arid = .66666;
	alpha_alive = .33333;
	population_happy = true;
	break;
	case 5:
	alpha_arid = .1666;
	alpha_alive = .8334;
	population_happy = true;
	break;
	case 6:
	alpha_arid = 0;
	alpha_alive = 1;
	population_happy = true;
	break;
	
}

//update_sprite_timer
if(tim1>lim1)
{
	anim_frame1++;
	tim1 = 0;
	lim1 = random_range(1,4);
}
tim1++;
if(anim_frame1 ==4)
anim_frame1 = 0;


////update_sprite_timer2
//if(tim2==lim2)
//{
//	anim_frame2++;
//	tim2 = 0;
//	lim2 = random_range(1,4);
//}
//tim2++;
//if(anim_frame2 ==4)
//anim_frame2 = 0;


////update_sprite_timer3
//if(tim3==lim3)
//{
//	anim_frame3++;
//	tim3 = 0;
//	lim3 = random_range(1,4);
//}
//tim3++;
//if(anim_frame3 ==4)
//anim_frame3 = 0;



