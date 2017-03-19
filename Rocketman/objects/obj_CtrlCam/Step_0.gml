/// @description step
// You can write your code in this editor


//Move the view

//camera_set_view_pos(cam, ship.x, ship.y); //update pos
var amount = camera_get_view_width(cam)/80; //movement spd




/*/ctrl the zoom/*/

if(mouse_wheel_up())
{
	scr_view_zoom(-.1, cam); //zoom in
	//show_debug_message("zoom in"); //zoom in
	
}

if(mouse_wheel_down())
{
	scr_view_zoom(.1, cam); //zoom out
	//show_debug_message("zoom out"); //zoom in
}


//get the offset
//so we can adjust the view x/y pos when zooming in n out
//zoom in/out from the center
var offx = abs(camera_get_view_width(cam)*amount - camera_get_view_width(cam)); //width

var offy = abs(camera_get_view_height(cam)*amount - camera_get_view_height(cam)); //height



// move by amount when following player
if(x< ship.x)
x+=amount;

if(x> ship.x)
x-=amount;

if(y< ship.y)
y+=amount;

if(y> ship.y)
y-=amount;




