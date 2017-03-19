/// @description Drag movable object while holding right click
/// @param noone
/// @return noone

if(scr_MouseOnTop()) //if mouse on top
{


	//if click held
	if(mouse_check_button(mb_right))
	{
		//mouse pos on first frame
		if(mouse_check_button_pressed(mb_right))
		{
		mouse_drag_startPosX = mouse_x;
		mouse_drag_startPosY = mouse_y;
		
		//init reset drag vector
		drag_posX = 0;
		drag_posY = 0;
		}


	//update relative units moved;//units to move in relation to drag_start
	drag_posX = mouse_x - mouse_drag_startPosX;
	drag_posY = mouse_y - mouse_drag_startPosY;
	
	

	//apply change	(if existant)
	x = offsetX + drag_posX;
	y = offsetY + drag_posY;

	}//if clicked release
	else if (mouse_check_button_released(mb_right))
	{
	//adjust offset
	offsetX  += drag_posX;
	offsetY += drag_posY;
	
	

	}
	
	

}
