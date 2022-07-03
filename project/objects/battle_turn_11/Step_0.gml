if (xt == global.xt_begin)
{
Battle_SetSoul(battle_soul_blue)
    xt = (global.xt_begin + 1)
}
if (xt == (global.xt_begin + 1))
{
    time += 1
    if (frac((time / 30)) == 0)
    {
        if (k == 1 && time != 80)
        {
            instance_create_depth(27, 355, 0, obj_bone_basic)
            var jb = instance_create_depth(597, 355, 0, obj_bone_basic)
			jb.direction = 180
            k = 0
        }
        else
            k = 1
        instance_create_depth(27, 220, 0, obj_bone_basic)
    }
    if (time >= 60)
    { 
		time = 0
        to_end += 1
        /*if (battle_soul_blue.dir == 270)
            battle_soul_blue.dir = 90
        else
            battle_soul_blue.dir = 270*/
    }
	with (obj_bone_basic)
        speed = 3.33333
    with (obj_bone_basic)
        speed = 3.33333
    if (to_end == 8)
    {
        alarm[0] = 100
        xt = (global.xt_begin + 2)
    }
}
