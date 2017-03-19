///initializing what particles are going to look like (ready to be created)

//initialize our global dust particles

global.pt_smoke = part_type_create();

//variable inside of script (local)
var pt = global.pt_smoke; 

///settings for particles

part_type_speed(pt,.1,2,0,.5);
part_type_direction(pt, 0, 360,0,0);
//part_type_gravity(pt, .5,230);
part_type_life(pt, 10,50);

//custom particles
part_type_sprite(pt,spr_smoke,1,0,true);
