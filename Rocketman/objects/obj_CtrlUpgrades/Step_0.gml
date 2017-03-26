/// @description upgrade ship
// You can write your code in this editor





var upgrades = global.upgrd_count[0]+global.upgrd_count[1]+global.upgrd_count[2]; //total amount of upgrades

if(upgrades == 6)
ship.sprite_index = spr_Sship2;

if(upgrades == 12)
ship.sprite_index = spr_Sship3;

if(upgrades == 18)
ship.sprite_index = spr_Sship4;


ship = instance_find(obj_Sship, 0);

//maps amount of resources available to global
global.curr_resources_available = ship.planet.resources; //depletes global of resources


if(upgrades > 8)
{

if(!audio_is_playing(snd_Space_happy_planet))
{
	audio_pause_sound(snd_Space_dead_planet);
	audio_play_sound(snd_Space_happy_planet,10,true);
	}
}
else
{
if(!audio_is_playing(snd_Space_dead_planet))
audio_play_sound(snd_Space_dead_planet,10,true);
}


if(upgrades > 17)
{
	screens = instance_find(obj_screens,0);
	
		with(screens)
		{
			alpha = 1;
			sprite_index = spr_Game_over_screen;
			
			global.STATE_GAME_END = true;
			
		
		}
		
				
}
