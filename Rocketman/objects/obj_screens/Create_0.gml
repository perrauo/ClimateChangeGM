/// @description Screens init
layer = global.Menus; //set screen

//full screen



global.STATE_GAME_END = false;

alpha = 1;

sprite_index = spr_Title_screen;
alarm_set(0,120); //set alarm for 2 secs

instance_deactivate_all(true);