if (xt == global.xt_begin)
{
    time += 1
    if (frac((time / 5)) == 0 && gb_fire == 1)
    {
        var gb_x = random(640)
        var gb_y = random(480)
        var gb_angle = ((point_direction(gb_x, gb_y, battle_soul.x, battle_soul.y) + 90) + random_range(-10, 10))
        crgb(random_range(30, 610), choose(-100, 740), gb_x, gb_y, 40, bssp7, bssp8, bssp9, 80, (0.5 + (to_end / 160)), (0.5 + (to_end / 160)), 10, 10, gb_angle, gb_angle, gb)
        to_end += 1
    }
    if (to_end >= 15)
    {
        gb_fire = 0  
        time = 0
        to_end = 0
        if (alarm[0] <= -1)
            alarm[0] = 120
    }
}
if (xt == (global.xt_begin + 1))
{
	Battle_SetSoul(battle_soul_blue)
	battle_soul_blue.dir = 180
    instance_create_depth(0, 0, 0, obj_phase2_final_chara_1)
    alarm[0] = 30
    xt = (global.xt_begin + 2)
}
if (xt == (global.xt_begin + 3))
{
    Battle_SetSoul(battle_soul_red)

    
    xt = (global.xt_begin + 4)
}
if (xt == (global.xt_begin + 4))
{
    battle_soul.x = 125
    var ins = crgb(-500, 287.5, 150, 287.5, 40, bssp7, bssp8, bssp9, 99999, 10, 10, 0, 0, 90, 90, gb)
    ins.image_yscale = 10
    alarm[0] = 90
    xt = (global.xt_begin + 5)
}
if (xt == (global.xt_begin + 6))
{
    battle_soul_red.image_angle = 90
    battle_soul_red.sprite_index = spr_battle_soul_blue
    instance_create_depth(0, 0, 0, obj_phase2_shaker)
    instance_create_depth(0, gb.y-17, (gb.depth - 1), obj_phase2_final_gb)
    battle_soul_red.x = (125 + player_x)
    gb.image_index = 4
    gb.visible = false
    instance_destroy(gb)
    xt = (global.xt_begin + 7)
    time = 0
}
if (xt == (global.xt_begin + 7))
{
    time += 1
    if (player_x < 180)
        player_x += 4
    battle_soul.x = (125 + player_x)
    if (frac((time / 2)) == 0){
        (instance_create_depth(740, random(480), -7, obj_phase2_final_star)).gravity_direction = 180
	}
    if (frac((time / 80)) == 0)
    {
        instance_create_depth(740, choose(331, 245), -5, obj_phase2_final_bone)
    }
    if (time >= 840)
        xt = (global.xt_begin + 8)
}
if (xt == (global.xt_begin + 8))
{
    instance_create_depth(0, 0, 0, obj_phase2_final_chara_2)
    Battle_SetBoardSize(75,65,70.5,70.5,0);
    player_x += 8
    battle_soul.x = (85 + player_x)
    if (battle_soul.x > (567.5 - 40))
    {
        xt = (global.xt_begin + 9)
        instance_destroy(obj_phase1_bc_2_star_fake)
        instance_destroy(obj_phase2_final_gb)
        scr_blackscreen(20)
        time = 0
        battle_soul.x = 320
        battle_soul.y = 310
	Battle_SetSoul(battle_soul_red_fast)
    }
}
if (xt == (global.xt_begin + 9))
{
    time += 1
    instance_create_depth(choose(random_range(0, 260), random_range(380, 640)), -100, -8, obj_phase1_9_star)
    if (frac((time / time_gb)) == 0)
    {
        crgb((320 + lengthdir_x(640, ((time * 4) + 90))), (320 + lengthdir_y(640, ((time * 4) + 90))), (320 + lengthdir_x(128, ((time * 4) + 90))), (320 + lengthdir_y(128, ((time * 4) + 90))), 30, bssp7, bssp8, bssp9, 42, 0.5, 0.5, 0, 0, ((time * 4) - (floor(((time * 4) / 360)) * 360)), (((time * 4) - (floor(((time * 4) / 360)) * 360)) + 90), gb_fast)
        to_end += 1
    }
    time_camera += 1
    if (time_camera >= time_gb)
    {
        camera.angle+= 15
        time_camera = 0
    }
    time_gb = max(5, (40 - to_end))
    if (to_end >= 180)
    {
        camera.angle=0
        xt = (global.xt_begin + 10)
        alarm[0] = 180
    }
}
if (xt == (global.xt_begin + 10))
{
    audio_sound_pitch(inkbgmp2, (audio_sound_get_pitch(inkbgmp2) - 0.01))
    if (audio_sound_get_pitch(inkbgmp2) <= 0){
        audio_stop_all()
}
time2+=0.01
if time2=1
{   battle_enemy_inkp1.touxtt=bssp1a1
	Battle_EndTurn()
}
}