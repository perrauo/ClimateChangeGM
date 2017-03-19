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


//Update resources/ alpha
switch(resources) //Planet specific event (text n sprites) //resources left
{
	case 0:
	alpha_arid = 1;
	alpha_alive = 0;
	break;
	case 1:
	alpha_arid = .8334;
	alpha_alive = .1666;
	break;
	case 2:
	alpha_arid = .66666;
	alpha_alive = .33333;
	break;
	case 3:
	alpha_alive = alpha_arid = .5;
	break;
	case 4:
	alpha_arid = .66666;
	alpha_alive = .33333;
	break;
	case 5:
	alpha_arid = .1666;
	alpha_alive = .8334;
	break;
	case 6:
	alpha_arid = 0;
	alpha_alive = 1;
	break;
	
	
	

}