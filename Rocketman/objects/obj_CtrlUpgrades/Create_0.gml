/// @description Insert description here
// You can write your code in this editor

//tracks ammount of upgrades
global.upgrd_count[0] = 0;
global.upgrd_count[1] = 0;
global.upgrd_count[2] = 0;

ship = instance_find(obj_Sship, 0);
planet = noone; //ref to planet nearest


alarm_set(0,5);