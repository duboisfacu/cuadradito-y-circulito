action_create_object(obj_vida_cc2, 1152, 960);
///sprite stand
if global.circulito2 = 0 {sprite_index=spr_cc2_stand}
else
if global.circulito2 = 1 {sprite_index=spr_cc2_stand_2}
else
if global.circulito2 = 2 {sprite_index=spr_cc2_stand_2_3}
else
if global.circulito2 = 3 {sprite_index=spr_cc2_stand_2_4}
else
if global.circulito2 = 4 {sprite_index=spr_cc2_stand_2_5}

//if global.circulito = 0 {instance_create (512, 960, obj_vida_cc1)}
//else
//if global.circulito = 1 {instance_create (512, 960, obj_vida_cc1_2)}

global.MAXvidap2 = 100;
global.vidap2= global.MAXvidap2;

