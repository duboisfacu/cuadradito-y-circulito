/// @description movimientos
if global.circulito = 0
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check(vk_left) && place_free(x-12,y) ){sprite_index=spr_cc1_run;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check(vk_right) && place_free(x+12,y) ){sprite_index=spr_cc1_run;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check(vk_up) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(vk_left) || keyboard_check_released(vk_right) ) ){sprite_index=spr_cc1_stand;image_speed=.65;}
if ((keyboard_check (vk_up))) {sprite_index=spr_cc1_run2;} 
if ((keyboard_check_released (vk_up))) {sprite_index=spr_cc1_stand;}
if (keyboard_check(vk_left) and (keyboard_check(vk_right) ) )sprite_index=spr_cc1_stand
}

else

if global.circulito = 1
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check(vk_left) && place_free(x-12,y) ){sprite_index=spr_cc1_run_2;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check(vk_right) && place_free(x+12,y) ){sprite_index=spr_cc1_run_2;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check(vk_up) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(vk_left) || keyboard_check_released(vk_right) ) ){sprite_index=spr_cc1_stand_2;image_speed=.65;}
if ((keyboard_check (vk_up))) {sprite_index=spr_cc1_run2_2;} 
    if ((keyboard_check_released (vk_up))) {sprite_index=spr_cc1_stand_2;}
if (keyboard_check(vk_left) and (keyboard_check(vk_right) ) )sprite_index=spr_cc1_stand_2
}

if global.circulito = 2
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check(vk_left) && place_free(x-12,y) ){sprite_index=spr_cc1_run_3;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check(vk_right) && place_free(x+12,y) ){sprite_index=spr_cc1_run_3;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check(vk_up) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(vk_left) || keyboard_check_released(vk_right) ) ){sprite_index=spr_cc1_stand_3;image_speed=.65;}
if ((keyboard_check (vk_up))) {sprite_index=spr_cc1_run2_3;} 
    if ((keyboard_check_released (vk_up))) {sprite_index=spr_cc1_stand_3;}
if (keyboard_check(vk_left) and (keyboard_check(vk_right) ) )sprite_index=spr_cc1_stand_3
}

if global.circulito = 3
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check(vk_left) && place_free(x-12,y) ){sprite_index=spr_cc1_run_4;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check(vk_right) && place_free(x+12,y) ){sprite_index=spr_cc1_run_4;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check(vk_up) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(vk_left) || keyboard_check_released(vk_right) ) ){sprite_index=spr_cc1_stand_4;image_speed=.65;}
if ((keyboard_check (vk_up))) {sprite_index=spr_cc1_run2_4;} 
    if ((keyboard_check_released (vk_up))) {sprite_index=spr_cc1_stand_4;}
if (keyboard_check(vk_left) and (keyboard_check(vk_right) ) )sprite_index=spr_cc1_stand_4
}


if global.circulito = 4
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check(vk_left) && place_free(x-12,y) ){sprite_index=spr_cc1_run_5;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check(vk_right) && place_free(x+12,y) ){sprite_index=spr_cc1_run_5;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check(vk_up) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(vk_left) || keyboard_check_released(vk_right) ) ){sprite_index=spr_cc1_stand_5;image_speed=.65;}
if ((keyboard_check (vk_up))) {sprite_index=spr_cc1_run2_5;} 
    if ((keyboard_check_released (vk_up))) {sprite_index=spr_cc1_stand_5;}
if (keyboard_check(vk_left) and (keyboard_check(vk_right) ) )sprite_index=spr_cc1_stand_5
}

///cosas que suben y restan vidas
if global.circulito = 0
{
if sprite_index = spr_cc1_stand or sprite_index = spr_cc1_run2 and (global.vidap1 > 0)
{
global.vidap1--;
}

else

if sprite_index = spr_cc1_run and (global.vidap1 < global.MAXvidap1)
{
global.vidap1++;
}
}

else 

if global.circulito = 1
{
if sprite_index = spr_cc1_stand_2 or sprite_index = spr_cc1_run2_2 and (global.vidap1 > 0)
{
global.vidap1--;
}

else

if sprite_index = spr_cc1_run_2 and (global.vidap1 < global.MAXvidap1)
{
global.vidap1++;
}
}

else 

if global.circulito = 2
{
if sprite_index = spr_cc1_stand_3 or sprite_index = spr_cc1_run2_3 and (global.vidap1 > 0)
{
global.vidap1--;
}

else

if sprite_index = spr_cc1_run_3 and (global.vidap1 < global.MAXvidap1)
{
global.vidap1++;
}
}
else 

if global.circulito = 3
{
if sprite_index = spr_cc1_stand_4 or sprite_index = spr_cc1_run2_4 and (global.vidap1 > 0)
{
global.vidap1--;
}

else

if sprite_index = spr_cc1_run_4 and (global.vidap1 < global.MAXvidap1)
{
global.vidap1++;
}
}

else 

if global.circulito = 4
{
if sprite_index = spr_cc1_stand_5 or sprite_index = spr_cc1_run2_5 and (global.vidap1 > 0)
{
global.vidap1--;
}

else

if sprite_index = spr_cc1_run_5 and (global.vidap1 < global.MAXvidap1)
{
global.vidap1++;
}
}


///lo que pasa al restar todas las vidas
if global.vidap1 <=0 {
instance_destroy ()
}

