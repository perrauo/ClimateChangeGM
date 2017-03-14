/// @description Drag movable object while holding right click
/// @param angle
/// @return adjusted_angle

angle = argument0;

///debug
debug_enabled = true;

quad_rem = 0; //remainder of the quadrant
adjusted_ang = 0;


if(x > planet.x) && (y < planet.y) //1st quad
{
	if(debug_enabled)
	show_debug_message("1st Quad");
	adjusted_ang = angle;
}
else if(x < planet.x) && (y < planet.y) //2nd quad
{
	if(debug_enabled)
	show_debug_message("2nd Quad");

	quad_rem = (pi/2)-angle;
    adjusted_ang =(pi/2)+quad_rem;
}
else if(x < planet.x) && (y > planet.y) //3rd quad
{	
	if(debug_enabled)
	show_debug_message("3rd Quad");

	 //adjusted_ang = (pi)+angle;
	 adjusted_ang = angle;
	 
} 
else if(x > planet.x) && (y < planet.y) //4th quad
{
	if(debug_enabled)
	 show_debug_message("4rd Quad");

	//quad_rem = (pi/2)-angle;
    //adjusted_ang = 3*(pi/2)+ quad_rem; 
	
	adjusted_ang = angle;
}

if(debug_enabled)
show_debug_message(adjusted_ang);


return adjusted_ang;
