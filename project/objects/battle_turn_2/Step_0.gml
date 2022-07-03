time += 1
if time=1{
Battle_SetSoul(battle_soul_blue)
}
if time>40{
if (xt == global.xt_begin)
{
    if (instance_exists(obj_phase1_2_bone_1) == 0)
    {
        for (var i = 0; i <= 4; i++)
        {
            instance_create_depth((27 - (i * 260)), 280,0, obj_phase1_2_bone_1)
            instance_create_depth((-35 - (i * 260)), 355, 0, obj_phase1_2_bone_2)
        }
    }
    alarm[0] = (180 + random_range(-20, 20))
    xt = (global.xt_begin + 1)
    to_end += 1
}
if (xt == (global.xt_begin + 1) && instance_exists(obj_phase1_2_bone_3) == 0 && instance_exists(obj_phase1_2_chara))
{
    if (frac((to_end / 2)) != 0)
        instance_create_depth(147, 355, 0, obj_phase1_2_bone_3)
    else
        (instance_create_depth(477, 355, 0, obj_phase1_2_bone_3)).direction = 180
    xt = global.xt_begin
}
if (to_end == 6)
{
 instance_destroy(obj_phase1_2_bone_1)
 instance_destroy(obj_phase1_2_bone_2)
 instance_destroy(obj_phase1_2_bone_3)
 instance_destroy(obj_phase1_2_chara)
    with (butmovkill)
    instance_destroy()
	Battle_EndTurn()
}
}