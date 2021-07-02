/// @description movimientos
if global.circulito2 = 0
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check_direct (ord("A")) && place_free(x-12,y) ){sprite_index=spr_cc2_run;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check_direct(ord("D")) && place_free(x+12,y) ){sprite_index=spr_cc2_run;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check_direct(ord("W")) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(ord("A")) || (keyboard_check_released(ord("D"))) ) ){sprite_index=spr_cc2_stand;image_speed=.65;}
if ((keyboard_check_direct(ord("W")))) {sprite_index=spr_cc2_run2;} 
if ((keyboard_check_released (ord("W")))) {sprite_index=spr_cc2_stand;}
if (keyboard_check_direct(ord("A")) and (keyboard_check_direct(ord("D")) ) )sprite_index=spr_cc2_stand
}

else

if global.circulito2 = 1
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check_direct (ord("A")) && place_free(x-12,y) ){sprite_index=spr_cc2_run_2;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check_direct(ord("D")) && place_free(x+12,y) ){sprite_index=spr_cc2_run_2;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check_direct(ord("W")) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(ord("A")) || (keyboard_check_released(ord("D"))) ) ){sprite_index=spr_cc2_stand_2;image_speed=.65;}
if ((keyboard_check_direct(ord("W")))) {sprite_index=spr_cc2_run2_2;} 
if ((keyboard_check_released (ord("W")))) {sprite_index=spr_cc2_stand_2;}
if (keyboard_check_direct(ord("A")) and (keyboard_check_direct(ord("D")) ) )sprite_index=spr_cc2_stand_2
}

if global.circulito2 = 2
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check_direct (ord("A")) && place_free(x-12,y) ){sprite_index=spr_cc2_run_2_3;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check_direct(ord("D")) && place_free(x+12,y) ){sprite_index=spr_cc2_run_2_3;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check_direct(ord("W")) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(ord("A")) || (keyboard_check_released(ord("D"))) ) ){sprite_index=spr_cc2_stand_2_3;image_speed=.65;}
if ((keyboard_check_direct(ord("W")))) {sprite_index=spr_cc2_run2_2_3;} 
if ((keyboard_check_released (ord("W")))) {sprite_index=spr_cc2_stand_2_3;}
if (keyboard_check_direct(ord("A")) and (keyboard_check_direct(ord("D")) ) )sprite_index=spr_cc2_stand_2_3
}

if global.circulito2 = 3
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check_direct (ord("A")) && place_free(x-12,y) ){sprite_index=spr_cc2_run_2_4;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check_direct(ord("D")) && place_free(x+12,y) ){sprite_index=spr_cc2_run_2_4;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check_direct(ord("W")) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(ord("A")) || (keyboard_check_released(ord("D"))) ) ){sprite_index=spr_cc2_stand_2_4;image_speed=.65;}
if ((keyboard_check_direct(ord("W")))) {sprite_index=spr_cc2_run2_2_4;} 
if ((keyboard_check_released (ord("W")))) {sprite_index=spr_cc2_stand_2_4;}
if (keyboard_check_direct(ord("A")) and (keyboard_check_direct(ord("D")) ) )sprite_index=spr_cc2_stand_2_4
}


if global.circulito2 = 4
{
gravity_direction=270;
if (place_free(x,y+1))gravity=1
else
gravity=0;
if (vspeed>25)vspeed=12
if (keyboard_check_direct (ord("A")) && place_free(x-12,y) ){sprite_index=spr_cc2_run_2_5;image_speed=.65;x-=13; image_xscale=-1;} 
if (keyboard_check_direct(ord("D")) && place_free(x+12,y) ){sprite_index=spr_cc2_run_2_5;image_speed=.65;x+=13; image_xscale=1;}
if (keyboard_check_direct(ord("W")) && not place_free(x,y+1) ){vspeed=-20;} 
if ((keyboard_check_released(ord("A")) || (keyboard_check_released(ord("D"))) ) ){sprite_index=spr_cc2_stand_2_5;image_speed=.65;}
if ((keyboard_check_direct(ord("W")))) {sprite_index=spr_cc2_run2_2_5;} 
if ((keyboard_check_released (ord("W")))) {sprite_index=spr_cc2_stand_2_5;}
if (keyboard_check_direct(ord("A")) and (keyboard_check_direct(ord("D")) ) )sprite_index=spr_cc2_stand_2_5
}

///cosas que suben y restan vidas
if global.circulito2 = 0
{
if sprite_index = spr_cc2_stand or sprite_index = spr_cc2_run2 and (global.vidap2 > 0)
{
global.vidap2--;
}

else

if sprite_index = spr_cc2_run and (global.vidap2 < global.MAXvidap2)
{
global.vidap2++;
}
}
else 

if global.circulito2 = 1
{
if sprite_index = spr_cc2_stand_2 or sprite_index = spr_cc2_run2_2 and (global.vidap2 > 0)
{
global.vidap2--;
}

else

if sprite_index = spr_cc2_run_2 and (global.vidap2 < global.MAXvidap2)
{
global.vidap2++;
}
}
else 

if global.circulito2 = 2
{
if sprite_index = spr_cc2_stand_2_3 or sprite_index = spr_cc2_run2_2_3 and (global.vidap2 > 0)
{
global.vidap2--;
}

else

if sprite_index = spr_cc2_run_2_3 and (global.vidap2 < global.MAXvidap2)
{
global.vidap2++;
}
}


if global.circulito2 = 3
{
if sprite_index = spr_cc2_stand_2_4 or sprite_index = spr_cc2_run2_2_4 and (global.vidap2 > 0)
{
global.vidap2--;
}

else

if sprite_index = spr_cc2_run_2_4 and (global.vidap2 < global.MAXvidap2)
{
global.vidap2++;
}
}

if global.circulito2 = 4
{
if sprite_index = spr_cc2_stand_2_5 or sprite_index = spr_cc2_run2_2_5 and (global.vidap2 > 0)
{
global.vidap2--;
}

else

if sprite_index = spr_cc2_run_2_5 and (global.vidap2 < global.MAXvidap2)
{
global.vidap2++;
}
}

//lo que pasa al restar todas las vidas
if global.vidap2 <=0 {
instance_destroy ()
}

