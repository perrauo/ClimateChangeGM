/// @description draw

//draw planet
draw_sprite_ext(sprite_alive,0,x,y,1,1,0,c_white,alpha_alive); //draw alive
draw_sprite_ext(sprite_arid,0,x,y,1,1,0,c_white,alpha_arid); //draw arid


//draw population
if(population_happy)
draw_sprite_ext(sprite_pop_happy,anim_frame1,x+10,y-68,1,1,0,c_white,1); //draw happy
else
draw_sprite_ext(sprite_pop_sad,anim_frame1,x+10,y-68,1,1,0,c_white,1); //draw sad


////draw population
//if(population_happy)
//draw_sprite_ext(sprite_pop_happy,anim_frame2,x,y-70,1,1,0,c_white,1); //draw happy
//else
//draw_sprite_ext(sprite_pop_sad,anim_frame2,x,y-70,1,1,0,c_white,1); //draw sad


////draw population
//if(population_happy)
//draw_sprite_ext(sprite_pop_happy,anim_frame3,x-5,y-65,1,1,0,c_white,1); //draw happy
//else
//draw_sprite_ext(sprite_pop_sad,anim_frame3,x-5,y-65,1,1,0,c_white,1); //draw sad






