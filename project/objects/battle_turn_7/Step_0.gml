timer++
if timer = 1{
Battle_SetSoul(battle_soul_blue)
}
if (xt == global.xt_begin)
{
    xt = (global.xt_begin + 1)
}
if (xt == (global.xt_begin + 1))
{
    time += 1
    if (time >= (90 - (first_already * 15)))
    {
        first_already = 1
        crgb(-100, 295, (230 - 44), 295, 8, bssp7, bssp8, bssp9, 35, 1, 1, 0, 0, 90, 90, gb)
        if (k == 1)
        {
            for (var i = 0; i <= 16; i++)
            {
				instance_create_depth(0,(360 - 0), 0, obj_phase1_7_bone)
                ins = instance_create_depth(640,200, 0, obj_phase1_7_bone)
                ins.direction = 180
            }
        }
        time = 0
        k = (-k)
        to_end += 1
    }
    if (to_end >= 8)
    {
        alarm[1] = 112.5
        xt = (global.xt_begin + 2)
    }
}

 