move_speed =(move_speed_base + inc_speed*global.speed_flowers)/image_xscale; 
image_speed= (anim_base+ inc_anim*global.speed_flowers);
with(ground_generator){
    refresh = refresh_base/other.move_speed;
}
