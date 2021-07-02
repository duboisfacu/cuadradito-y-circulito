/// @description  Movimientos

// SPRITES EN MOVIMIENTO
if keyboard_check(vk_left) {sprite_index=spr_c2_run;image_speed=.65; image_xscale=-1;} 
if keyboard_check_direct(vk_right)  {sprite_index=spr_c2_run;image_speed=.65;; image_xscale=1;}
if keyboard_check_released(vk_left) || (keyboard_check_released(vk_right)){sprite_index=spr_c2_stand;image_speed=.65;} 
if keyboard_check_direct(vk_space) {sprite_index=spr_c2_run2;} 
if keyboard_check_released (vk_space) {sprite_index=spr_c2_stand;}
if keyboard_check_direct(vk_left) and (keyboard_check_direct(vk_right))  sprite_index=spr_c2_stand




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

//BABA
if (place_meeting(x,y+1,obj_baba)) || (place_meeting(x,y+1,obj_baba2))
{
    movespeed = 3.5;
    grav = 3.5;
    jumpsmax=0

}
else {movespeed = 8;
    grav = 1.5;
        jumpsmax=2
}



/// Sonidos 

// Variables

var curr_coll = place_meeting(x,y+1,obj_baba);
var prev_coll = place_meeting(xprevious,yprevious+1,obj_baba);


// Reproductor de sonidos al estar encima

if  (curr_coll==1) && (prev_coll==0) 
{
audio_play_sound(snd_baba,1,false);
}





///Sonidos 2
// Variables

var curr_coll2 = place_meeting(x,y+1,obj_baba2);
var prev_coll2 = place_meeting(xprevious,yprevious+1,obj_baba2);


// Reproductor de sonidos al estar encima

if  (curr_coll2==1) && (prev_coll2==0) 
{
audio_play_sound(snd_baba2,1,false);
}



