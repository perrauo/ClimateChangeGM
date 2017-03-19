///initializing what particles are going to look like (ready to be created)

//initialize our global dust particles

global.pt_launching = part_type_create();

//variable inside of script (local)
var pt = global.pt_launching; 

///settings for particles

var spd = random_range(5,10);
var dir = random_range(-360,360);

part_type_speed(pt,2,5,0,0);
part_type_direction(pt,-360,360,0,0);
//part_type_gravity(pt, .5,230);
part_type_life(pt, 10,20);


//custom particles
part_type_sprite(pt,spr_part,false,false,true);
