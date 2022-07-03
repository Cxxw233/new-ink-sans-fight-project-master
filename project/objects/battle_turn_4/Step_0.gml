time += 1
if time=1{
Battle_SetSoul(battle_soul_blue)
}
if (xt == global.xt_begin)
{
    alarm[0] = 8
    alarm[1] = 1
    battle_enemy_inkp1.yj -= 40
    xt = (global.xt_begin + 1)
}
if (xt == (global.xt_begin + 1))
{
    if (alarm[2] <= -1)
        alarm[2] = 150
}
if (xt == (global.xt_begin + 2))
{
    alarm[3] = 1
    alarm[4] = 150
    xt = (global.xt_begin + 3)
}
if (xt == (global.xt_begin + 4))
{
    instance_create_depth(0, 0, 0, obj_phase1_4_chara_1)
    xt = (global.xt_begin + 5)
    if (alarm[5] <= -1)
        alarm[5] = 270
    if (alarm[6] <= -1)
        alarm[6] = 240
}
if battle_soul.x<178
battle_soul.x=178
if battle_soul.y<228
battle_soul.y=228
