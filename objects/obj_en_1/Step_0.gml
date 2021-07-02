
hsp = dir * movespeed;
vsp += grav;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_colision_bad))
{
    while(!place_meeting(x+sign(hsp),y,obj_colision_bad))
    {
        x += sign(hsp);

    
    }
    hsp = 0;
    dir *= -1;
}
x += hsp;

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
    if (obj_player.y < y-70)
    {
        with (obj_player) vsp = -jumpspeed;
        instance_create (x,y, obj_end)
       instance_destroy();
        audio_play_sound (snd_splat,1,false)
    }
    else
    {
        scr_death();
    }
    
    if (place_meeting(x,y+vsp,obj_en_1))
{
    while(!place_meeting(x,y+sign(vsp),obj_en_1))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
}
















