global.C=(global.vidaenemigo/global.max_vidaenemigo)*300


draw_sprite_stretched (spr_lifebare,0,811.5,93,global.C,32,)
if global.vidaenemigo <=9 {draw_sprite_stretched (spr_lifebare,1,811.5,93,global.C,32,)}
if global.vidaenemigo <=8 {draw_sprite_stretched (spr_lifebare,2,811.5,93,global.C,32,)}
if global.vidaenemigo <=7 {draw_sprite_stretched (spr_lifebare,3,811.5,93,global.C,32,)}
if global.vidaenemigo <=6 {draw_sprite_stretched (spr_lifebare,4,811.5,93,global.C,32,)}
if global.vidaenemigo <=5 {draw_sprite_stretched (spr_lifebare,5,811.5,93,global.C,32,)}
if global.vidaenemigo <=4 {draw_sprite_stretched (spr_lifebare,6,811.5,93,global.C,32,)}
if global.vidaenemigo <=3 {draw_sprite_stretched (spr_lifebare,7,811.5,93,global.C,32,)}
if global.vidaenemigo <=2 {draw_sprite_stretched (spr_lifebare,8,811.5,93,global.C,32,)}
if global.vidaenemigo <=1 {draw_sprite_stretched (spr_lifebare,9,811.5,93,global.C,32,)}

draw_sprite (spr_vida_enemigo,0,960,93)

