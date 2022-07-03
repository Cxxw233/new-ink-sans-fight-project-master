if (xt == global.xt_begin)
{
    alarm[0] = 1
	Battle_SetSoul(battle_soul_blue)
    xt = (global.xt_begin + 1)
}
if (xt == (global.xt_begin + 1))
{
    time += 1
    if (frac((time / 30)) == 0)
    {
        var bone_y = choose(18, 70, 120)
        bone_y += 230
        if (choose(0, 1) == 0)
        {
            var ins = instance_create_depth((0 - 7), bone_y, -5, obj_bone_basic)
            ins.direction = 0
			ins.sprite_index = bssp11
			ins.image_yscale = 1.3
			
        }
        else
        {
            ins = instance_create_depth(0, bone_y, -5, obj_bone_basic)
            ins.direction = 180
			ins.sprite_index = bssp11
			ins.image_yscale = 1.3
        }
        ins.speed = 2.66666
    }
    if (time == 60)
    {
        var gb_y = choose(40, 90, 140)
        gb_y += 230
        if (choose(0, 1) == 1)
            crgb(-100, gb_y, (150- 44), gb_y, 30, bssp7, bssp8, bssp9, 60, 1, 1, 0, 0, 90, 90, gb)
        else
            crgb(740, gb_y, (490 + 44), gb_y, 30, bssp7, bssp8, bssp9, 60, 1, 1, 0, 0, 270, 270, gb)
        time = 0
        to_end += 1
        if (to_end >= 24)
        {
            alarm[1] = 90
            stop = 1
            xt = (global.xt_begin + 2)
        }
    }
}
if (xt == (global.xt_begin + 3))
{
    Battle_EndTurn()
    instance_destroy(obj_phase1_12_tran)
    
}
