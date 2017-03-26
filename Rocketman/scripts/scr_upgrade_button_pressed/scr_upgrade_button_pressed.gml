///UPGRADE BUT PRESSED

//agrument button index
//upgrd_index; //index of the upgrade to add in

///////DETECT IF BUTTON IS CLICKED  ///TODO add multiple button ()decr incr
button_clicked = false;

//Detects if mouse on top/////////////////////
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
if(mouse_on_top) && mouse_check_button_pressed(mb_any) //if mouse on top an clicked
{button_clicked = true;}


//if clicked add upgrade to the stack
if(button_clicked)
{
	pressed = true;
		
	if(global.upgrd_count[upgrd_index]<5) //cap reached
	{
	 //set as uninteractable
	var upgrd_butt = instance_create_layer(x+x_offset,y,global.GUI_comp,obj_Upgrade_Button);
	upgrd_butt.upgrd_index = upgrd_index; //set correct index
	
	}
	
	global.upgrd_count[upgrd_index]++; //increase upgrd count
	global.curr_resources_available--;
	
}





