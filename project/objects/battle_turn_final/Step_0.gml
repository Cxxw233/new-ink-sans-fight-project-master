var array;Battle_SetSoul(battle_soul_red)
if (xt == global.xt_begin)
{ 
if (instance_exists(obj_phase1_final_chara_1) == 0)
    {
        instance_create_depth(0, 0, 0, obj_phase1_final_chara_1)
        time = 0
    }
}
if (xt == (global.xt_begin + 1))
{

    time += 1
    if ((92 + (time / 5)) <= 230)
    {
        //instance_destroy(block)
        //scr_block((92 + (time / 5)), 250, (542 - (time / 5)), 385)

    }
    else if (alarm[0] <= -1)
        alarm[0] = 60
    if (frac((time / 90)) == 0)
    {
        for (var i = 0; i < instance_number(obj_phase1_final_heart_fake); i++)
            array[i] = instance_find(obj_phase1_final_heart_fake, i)
        array[(i + 1)] = battle_soul
        repeat (1)
        {
            //var px = array[irandom((i + 1))].x
            //var py = array[irandom((i + 1))].y
            var gb_x = random_range(320, 640)
            var gb_y = random_range(100, 220)
            var gb_angle = (point_direction(gb_x, gb_y, battle_soul.x, battle_soul.y) + 90)
            crgb(random(640), -100, gb_x, gb_y, 15, bssp7, bssp8, bssp9, 30, 1, 1, 0, 0, gb_angle, gb_angle, gb)
            gb_x = (320 - (gb_x - 320))
            gb_angle = (point_direction(gb_x, gb_y, battle_soul.x, battle_soul.y) + 90)
            crgb(random(640), -100, gb_x, gb_y, 15, bssp7, bssp8, bssp9, 30, 1, 1, 0, 0, gb_angle, gb_angle, gb)
        }
    }
    if (alarm[1] <= -1)
        alarm[1] = 45
}
if (xt == (global.xt_begin + 2))
{
    instance_create_depth(battle_enemy_inkp1.x,battle_enemy_inkp1.y , -7, obj_phase1_final_pen_2)
    instance_destroy(obj_phase1_final_pen_1)
    with (obj_phase1_final_heart_fake)
        mode = 1
}
if global.bii=1{
instance_destroy(obj_phase1_final_pen_2)
 Battle_EndTurn()
 global.phase=2
 audio_stop_sound(inkbgmp1)
 global.bgm=audio_play_sound(inkbgmp2,100,1)
 Battle_SetMenuDialog("* ink.")
 f = file_bin_open("temp", 1)
file_bin_write_byte(f, 1)
file_bin_close(f)
 Battle_SetTurnNumber(Battle_GetTurnNumber() = 0);
}