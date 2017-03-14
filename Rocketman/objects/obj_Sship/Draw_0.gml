/// @description draw

var spr_ang = radtodeg(curr_ship_angle); //converts the ship angle into deg

draw_sprite_ext(sprite_index,0,x,y,1,1,spr_ang,c_white,1);
draw_line_color(x,y,x+orb_spdX*50, y+orb_spdY*50,c_red,c_red);