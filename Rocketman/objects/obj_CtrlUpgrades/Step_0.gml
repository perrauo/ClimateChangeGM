/// @description upgrade ship
// You can write your code in this editor

var upgrades = global.upgrd_count[0]+global.upgrd_count[1]+global.upgrd_count[2]; //total amount of upgrades

if(upgrades == 6)
ship.sprite_index = spr_Sship2;

if(upgrades == 12)
ship.sprite_index = spr_Sship3;

if(upgrades == 18)
ship.sprite_index = spr_Sship4;


if(planet !=noone)
{
//maps amount of resources available to global
global.curr_resources_available = planet.resources; //depletes global of resources
planet.resources = global.curr_resources_available; //update the planets resources accordingly
}