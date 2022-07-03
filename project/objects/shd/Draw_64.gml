if (global.phase == 5&&battle_enemy_inkp1.boss1xt=0)
{
if(!surface_exists(surface)){
	surface = surface_create(640,480);
}

surface_set_target(surface);
draw_surface(application_surface,0,0);
surface_reset_target();

draw_set_color(c_black);
draw_rectangle(0,0,640,480,0);
draw_set_color(c_white);

shader_set(shd_gray);
draw_surface(surface,0,0);
shader_reset();

}
if file_exists("xt3end")
{
    f = file_bin_open("xt3end", 0)
    overs = file_bin_read_byte(f)
    file_bin_close(f)
}

if (global.phase == 3&& overs=1&&battle_enemy_inkp1.bthp[1] <=0&& battle_enemy_inkp1.bthp[2] <=0&& battle_enemy_inkp1.bthp[3] <=0&& battle_enemy_inkp1.bthp[4] <=0&& battle_enemy_inkp1.bthp[5] <=0&& battle_enemy_inkp1.bthp[6] <=0&& battle_enemy_inkp1.bthp[7] <=0&& battle_enemy_inkp1.bthp[8] <=0)
{
if(!surface_exists(surface)){
	surface = surface_create(640,480);
}

surface_set_target(surface);
draw_surface(application_surface,0,0);
surface_reset_target();

draw_set_color(c_black);
draw_rectangle(0,0,640,480,0);
draw_set_color(c_white);

shader_set(shd_gray);
draw_surface(surface,0,0);
shader_reset();

}
