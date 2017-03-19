/// @description Insert description here
// You can write your code in this editor

ship = instance_find(obj_Sship, 0);


cam = camera_create_view(x, y, 512, 448, 0, self, 10, 10, 1, 1);
view_set_camera(0, cam);
//camera_set_view_size(cam, 512,448); //init size
//camera_set_view_pos(cam, ship.x, ship.y);


offx = 0; //offset for the cam

offy = 0;