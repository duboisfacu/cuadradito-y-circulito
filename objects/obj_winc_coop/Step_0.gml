if not instance_exists (obj_funcion_enemigo_p2) and not instance_exists (obj_funcion_enemigo_p1)
{
instance_create (960,300,obj_lose) 
room_goto (rm_lose)
}

if global.vidaenemigo <=0  {instance_create (960,300,obj_win_coop) 
room_goto (rm_win)}





