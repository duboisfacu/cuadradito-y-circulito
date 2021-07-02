action_create_object(obj_vida_cc1, 512, 960);
global.MAXvidap1 = 100;
global.vidap1= global.MAXvidap1;



//if global.circulito = 0 {instance_create (512, 960, obj_vida_cc1)}
//else
//if global.circulito = 1 {instance_create (512, 960, obj_vida_cc1_2)}

///sprite stand
if global.circulito = 0 {sprite_index=spr_cc1_stand}
else
if global.circulito = 1 {sprite_index=spr_cc1_stand_2}
else
if global.circulito = 2 {sprite_index=spr_cc1_stand_3}
else
if global.circulito = 3 {sprite_index=spr_cc1_stand_4}
else
if global.circulito = 4 {sprite_index=spr_cc1_stand_5}

