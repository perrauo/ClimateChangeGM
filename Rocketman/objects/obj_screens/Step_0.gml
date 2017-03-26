/// @description Insert description here
// You can write your code in this editor

//window_set_fullscreen(true);
if keyboard_check_pressed(vk_escape) game_end();


if keyboard_check_pressed(vk_space) && (sprite_index==spr_Ctrl_screen)
{
	alpha = 0;
	instance_activate_all();

}

if(keyboard_check_pressed(vk_space)) && global.STATE_GAME_END
room_restart();