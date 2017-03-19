//scr_view_zoom(amount, v_index)

var amount = 1+argument0; // amount +1 since ltets say 
//they pass -.5 itl reduce the amount from 1 to .5
//amount should be neg number > -1 or pos <1

var cam = argument1; //in case multiple view

show_debug_message("zoom change"); //zoom in


//lim how much they can zoom
if(camera_get_view_width(cam) <= 64 && amount < 1) 
return; //exit script (min reached)

if(camera_get_view_width(cam) >= 1280 && amount > 1) 
return; //exit script (max reached)


//get the offset
//so we can adjust the view x/y pos when zooming in n out
//zoom in/out from the center
var offx = abs(camera_get_view_width(cam)*amount - camera_get_view_width(cam)); //width

var offy = abs(camera_get_view_height(cam)*amount - camera_get_view_height(cam)); //height


//scale the view
//scaling view by ammount.. e.g if pass in .1 then ammount is 1.01 then 10% increase (zoom out
camera_set_view_size(cam,camera_get_view_width(cam)*amount, camera_get_view_width(cam)*amount); 

//adjust the view pos based on offset
if(amount < 1) //add to the views x coor d by offset
{
	camera_set_view_pos(cam,camera_get_view_x(cam)+offx/2, camera_get_view_y(cam)+offy/2);
}
else if (amount > 1) //then subract from x y pos
{
	 camera_set_view_pos(cam,camera_get_view_x(cam)-offx/2, camera_get_view_y(cam)-offy/2);
}



