time += 1
if time=1{
Battle_SetSoul(battle_soul_blue)
}
if (xt == global.xt_begin)
{
    battle_enemy_inkp1.yj = -100
    instance_create_depth(182, 327.5, -4, obj_phase1_3_tran)
	
    xt = (global.xt_begin + 1)
}
if (xt == (global.xt_begin + 1))
{
    if (alarm[0] <= -1)
        alarm[0] = 6
    time_gb += 1
    if (time_gb == 90)
    {
        var gb_x = random(640)
        var gb_y = random(480)
        var gb_angle = (point_direction(gb_x, gb_y, battle_soul.x, battle_soul.y) + 90)
        crgb(random(640), -100, gb_x, gb_y, 30, bssp7, bssp8, bssp9, 60, 1, 1, 0, 0, gb_angle, 0, gb)
        time_gb = 0
        to_end += 1
    }
    if (to_end == 12)
        xt = (global.xt_begin + 2)
}
if (xt == (global.xt_begin + 2))
{
    alarm[1] = 135
    alarm[2] = 30
    xt = (global.xt_begin + 3)
}

 