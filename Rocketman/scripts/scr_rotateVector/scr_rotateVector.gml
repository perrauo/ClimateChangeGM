/// @description Drag movable object while holding right click
/// @param x (x comp of the vec)
/// @param y (y comp of the vec)
/// @param angle (rad)
/// @return array rotated_vec


vecX = argument0;
vecY = argument1;
angle_to_rotate = argument2;


//ORBIT DIRECTION VECTOR
////transform movement vector with transformation matrix
////cos(O)   -sin(O)		""Trans m for rotation
////sin(O)    cos(O)

rotated_vec[0] = cos(angle_to_rotate)*(vecX)-sin(angle_to_rotate)*(vecY);
rotated_vec[1] = sin(angle_to_rotate)*(vecX)+cos(angle_to_rotate)*(vecY);

return rotated_vec;
