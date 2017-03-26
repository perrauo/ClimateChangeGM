/// @description Drag movable object while holding right click
/// @param noone
/// @return noone




if(place_meeting(x+hspd, y,obj_Planet))
{

//	grounded = false;
	while(!place_meeting(x+sign(hspd),y,obj_Planet))
	{
		x+= sign(hspd);
			
	}
	hspd = 0; //when sufficiently close
	
	grounded = true;//indicate the ship has landed


}
else if (!place_meeting(x,y+sign(vspd),obj_Planet)) //if not landed vertically either than not grounded
grounded = false;

//precise collision detection
if(place_meeting(x, y+vspd,obj_Planet))
{
//	grounded = false;
	while(!place_meeting(x,y+sign(vspd),obj_Planet))
	{
		y+= sign(vspd);
			
	}
	vspd = 0; //when sufficiently close
	grounded = true;//indicate the ship has landed

}
else if (!place_meeting(x+sign(hspd),y,obj_Planet)) //if not landed vertically either than not grounded
grounded = false;



////precise collision detection
//////////////////////////////////////GRAVITY_PULL

//if(place_meeting(x+grav_pullX, y,obj_Planet))
//{

//	while(!place_meeting(x+sign(grav_pullX),y,obj_Planet))
//	{
//		x+= sign(grav_pullX);
	
//	}
//	grav_pullX = 0; //when sufficiently close


//}


////precise collision detection
//if(place_meeting(x, y+grav_pullY,obj_Planet))
//{

//	while(!place_meeting(x,y+sign(grav_pullY),obj_Planet))
//	{
//		y+= sign(grav_pullY);
	
//	}
//	grav_pullY = 0; //when sufficiently close


//}

//////////////////////////////////////ORB_SPD
////Add precise colision for orb_spd as well


//if(place_meeting(x+orb_spdX, y,obj_Planet))
//{

//	while(!place_meeting(x+sign(orb_spdX),y,obj_Planet))
//	{
//		x+= sign(orb_spdX);
	
//	}
//	orb_spdX = 0; //when sufficiently close


//}

////precise collision detection
//if(place_meeting(x, y+orb_spdY,obj_Planet))
//{

//	while(!place_meeting(x,y+sign(orb_spdY),obj_Planet))
//	{
//		y+= sign(orb_spdY);
	
//	}
//	orb_spdY = 0; //when sufficiently close


//}

