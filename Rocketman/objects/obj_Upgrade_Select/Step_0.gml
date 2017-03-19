/// @description Insert description here
// You can write your code in this editor


if(marked_for_destr)
{
with(obj_Upgrade_Button) //destroy all the pegs
{
	instance_destroy();
}


//update timer
if(tim1 ==lim1)
{

	img_xscale *= .5; //reduce by factor of .12;
	tim1 = 0
}
tim1++;
}


if(img_xscale < .005) //if suffic small destroy the instance
instance_destroy();