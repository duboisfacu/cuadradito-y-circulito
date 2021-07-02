depth = -41
//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

//Enemy Collision a ver

if (place_meeting(x,y,obj_player))
{
    if (obj_player.y < y-16)
    {
        with (obj_player) vsp = -jumpspeed;
        instance_destroy();
    }
    else
    {
        scr_death();
    }}

