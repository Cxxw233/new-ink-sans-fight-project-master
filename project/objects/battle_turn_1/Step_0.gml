if (xt == global.xt_begin)
{
    time += 1
    if (time == 30)
    {
         
        crgb(random(640), -100, battle_soul.x, 120, 15, bssp7,bssp8, bssp9, 30, 0.5, 0.5, 0, 0, 0, 0, gb)
        var ins = instance_create_depth(22, irandom_range(250,390), 0, obj_phase1_1_bone)
        ins = instance_create_depth(602,  battle_soul.x, 0, obj_phase1_1_bone)
        ins.direction = 180
    }
    if (time == 60)
    {
        ins = instance_create_depth(22,  irandom_range(250,390), 0, obj_phase1_1_bone)
        ins = instance_create_depth(602, battle_soul.x, 0, obj_phase1_1_bone)
        to_end += 1
        time = 0
    }
    if (to_end >= 10)
    {
        xt = (global.xt_begin + 1)
        alarm[1] = 150
    }
}
if (xt == (global.xt_begin + 1))
{
 xt = (global.xt_begin + 2)
}
if (xt == (global.xt_begin + 2))
{
Battle_EndTurn()
}

 