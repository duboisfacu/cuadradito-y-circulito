// SPRITES EN MOVIMIENTO
if keyboard_check(vk_left) {sprite_index=spr_cc1_run;image_speed=.65; image_xscale=-1;} 
if keyboard_check_direct(vk_right)  {sprite_index=spr_cc1_run;image_speed=.65;; image_xscale=1;}
if keyboard_check_released(vk_left) || (keyboard_check_released(vk_right)){sprite_index=spr_cc1_stand;image_speed=.65;}
if keyboard_check_direct(vk_space) {sprite_index=spr_cc1_run2;} 
if keyboard_check_released (vk_space) {sprite_index=spr_cc1_stand;}
if keyboard_check_direct(vk_left) and (keyboard_check_direct(vk_right))  sprite_index=spr_cc1_stand


//Get the player's input
key_right = keyboard_check(vk_right); 
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_down = keyboard_check(vk_down);


//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x,y+1,obj_wall))
{
    jumps = jumpsmax;
}

if (key_jump) && (jumps > 0)
{
    jumps -= 1;
    vsp = -jumpspeed;
        audio_play_sound (snd_jump,50,false);
}

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

//Horizontal Collision
if (place_meeting(x+hsp_final,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp_final),y,obj_wall))
    {
        x += sign(hsp_final);
    }
    hsp_final = 0;
    hsp = 0;
}
x += hsp_final;

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

