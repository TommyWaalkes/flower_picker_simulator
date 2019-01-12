if(global.flowers<argument0){
    global.flowers = 0;
    global.speed_flowers = 0;
    global.jump_flowers = 0;  
}
else{
    global.flowers -= argument0;
}
i = 0;
for(i=0;i<=argument0;i++){
    s = choose(true, false);
    if(s){
        if(global.speed_flowers>0){
            global.speed_flowers -= 1;
            f = instance_create(x,y,flower_falling);
            with(f){
                sprite_index = flower_big_s; 
            }
        }
    }
    else{
        if(global.jump_flowers>0){
            global.jump_flowers -= 1; 
            f = instance_create(x,y,flower_falling);
            with(f){
                sprite_index = flower_big_blue_s; 
            }
        }
    }
}   
    calc_jump();
    calc_speed();
