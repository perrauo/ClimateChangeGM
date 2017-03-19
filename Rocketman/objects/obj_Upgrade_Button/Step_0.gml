/// @description step
// You can write your code in this editor

if(!init) //init some vals
{
	init = true;
		
	switch(upgrd_index)
	{
	case 0:
	sprite_index = spr_GUI_upgrade_peg1;
	break
	
	case 1:
	sprite_index = spr_GUI_upgrade_peg2;
	break
	
	case 2:
	sprite_index = spr_GUI_upgrade_peg3;
	break
	}
	
}

if(global.curr_resources_available ==0)
pressed =true; //makes impossible to upgrade if no resources


//if pressed upgrade right upgrade index
if(!pressed)
scr_upgrade_button_pressed(); 
