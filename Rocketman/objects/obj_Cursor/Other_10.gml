/// @description in Orbit
//set new target angle
//TODO: rotate smoothly
curr_ship_angle = degtorad(point_direction(planet.x, planet.y, x, y));


var rotated_vec = scr_rotateVector(ORB_VEC_X,ORB_VEC_Y,curr_ship_angle); //rotate base vector
orb_dirX = rotated_vec[0];
orb_dirY = rotated_vec[1];

	//show_debug_message("XDir")
	//show_debug_message(orb_dirX)
	//show_debug_message("YDir")
	//show_debug_message(orb_dirY)

