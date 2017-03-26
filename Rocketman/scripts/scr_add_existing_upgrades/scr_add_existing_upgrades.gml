

var y_offset = 0;

for(i=0; i<3; i++)
{
	count= global.upgrd_count[i];
	while(count > 0)
	{
		
		//set as uninteractable
		if(global.upgrd_count[i]>0)
		{
		var upgrd_butt = instance_create_layer(x+x_offset-150,y-100+y_offset,global.GUI_comp,obj_Upgrade_Button);
		upgrd_butt.upgrd_index = i; //set correct index
		
		if(count ==1) //make sure buttons are pressed
		{
			upgrd_butt.pressed = false;
		}
		else
		upgrd_butt.pressed = true;
	
		x_offset += 50;//add 50 unit offset
		count--;
		}
		
	}
	
	x_offset = 0;
	y_offset += 75;

}
