hsp = dir * movespeed;
vsp += grav;

if (place_meeting(x,y,obj_player))
{
    if (obj_player.y < y-70)
    {
		with (obj_player) vsp = -jumpspeed* 3;
    }
	
}