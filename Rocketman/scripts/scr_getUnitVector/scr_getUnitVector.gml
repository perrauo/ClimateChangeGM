/// @description Drag movable object while holding right click
/// @param component x1
/// @param component x2
/// @return array unit_vec

vec[0] = argument0;
vec[1] = argument1;


unit_vec[0] = vec[0]/sqrt(sqr(vec[0])+sqr(vec[1]));
unit_vec[1] = vec[1]/sqrt(sqr(vec[0])+sqr(vec[1]));

return unit_vec;

