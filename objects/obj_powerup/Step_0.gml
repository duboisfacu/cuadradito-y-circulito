image_angle += 1;

if (place_meeting(x,y,obj_player))
{
    if (obj_player.y < y-16)
    {
        with (obj_player) vsp = -jumpspeed;
        instance_destroy();
    }
}

