/// @description Detects if mouse is on top
/// @param noone
/// @return boolean (yes/no)



//Detects if mouse on top
for(i = y; i<y+sprite_height; i++)
{
	for(j = x; j<x+sprite_width; j++)
	{
		if(mouse_x==j && mouse_y ==i)
		{
			mouse_on_top = true;
			break;
						
		}
		else
		mouse_on_top = false;
		
	}
	
	if(mouse_on_top)
	break;
}

return mouse_on_top;