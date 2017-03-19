/// @description Init main UI frame
//Upgrades


//makes sure it remains in the room
while(bbox_left-10 < 0) // left boundary intersection
x += 1;
while(bbox_right+10 > room_width)// right boundary intersection 
x -= 1;  
while(bbox_top+10 < 0)  // top boundary intersection
y += 1;
while(bbox_bottom-10 > room_height)  // bottom boundary intersection
y -= 1;


ship = instance_find(obj_Sship,0); //ref to ship

butt_offsetx = -150;
butt_offsety = -100;


//init UI buttons
butt_uprg0 = instance_create_layer(x+ butt_offsetx, y+butt_offsety, global.GUI_comp, obj_Upgrade_Button);
butt_uprg0.upgrd_index = 0; //chose first index

butt_uprg1 = instance_create_layer(x +butt_offsetx, y+75+butt_offsety, global.GUI_comp, obj_Upgrade_Button);
butt_uprg1.upgrd_index = 1; //chose first index

butt_uprg2 = instance_create_layer(x +butt_offsetx, y+150+butt_offsety, global.GUI_comp, obj_Upgrade_Button);
butt_uprg2.upgrd_index = 2;


//sprites
alpha = .5; 

tim1 = 0;
lim1 = 2;


img_xscale = 1;

//marked for destruction
marked_for_destr = false;


