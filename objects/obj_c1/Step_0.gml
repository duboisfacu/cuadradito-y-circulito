/// @description movimientos
if global.cuadradito = 0
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check(vk_left) && place_free(x-12,y) ){sprite_index=spr_c1_run;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check(vk_right) && place_free(x+12,y) ){sprite_index=spr_c1_run;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check(vk_up) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(vk_left) || keyboard_check_released(vk_right) ) ){sprite_index=spr_c1_stand;image_speed=.65;}
if ((keyboard_check (vk_up))) {sprite_index=spr_c1_run2;} 
if ((keyboard_check_released (vk_up))) {sprite_index=spr_c1_stand;}
if (keyboard_check(vk_left) and (keyboard_check(vk_right) ) )sprite_index=spr_c1_stand
}

else

if global.cuadradito = 1
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check(vk_left) && place_free(x-12,y) ){sprite_index=spr_c1_run_2;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check(vk_right) && place_free(x+12,y) ){sprite_index=spr_c1_run_2;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check(vk_up) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(vk_left) || keyboard_check_released(vk_right) ) ){sprite_index=spr_c1_stand_2;image_speed=.65;}
if ((keyboard_check (vk_up))) {sprite_index=spr_c1_run2_2;} 
if ((keyboard_check_released (vk_up))) {sprite_index=spr_c1_stand_2;}
if (keyboard_check(vk_left) and (keyboard_check(vk_right) ) )sprite_index=spr_c1_stand_2
}

///cosas que suben y restan vidas
if global.cuadradito = 0
{
if sprite_index = spr_c1_stand or sprite_index = spr_c1_run2 and (global.vidap1 > 0)
{
global.vidap1--;
}

else

if sprite_index = spr_c1_run and (global.vidap1 < global.MAXvidap1)
{
global.vidap1++;
}
}
else

if global.cuadradito = 1
{
if sprite_index = spr_c1_stand_2 or sprite_index = spr_c1_run2_2 and (global.vidap1 > 0)
{
global.vidap1--;
}

else

if sprite_index = spr_c1_run_2 and (global.vidap1 < global.MAXvidap1)
{
global.vidap1++;
}
}

///lo que pasa al restar todas las vidas
if global.vidap1 <=0 {
instance_destroy ()
}

