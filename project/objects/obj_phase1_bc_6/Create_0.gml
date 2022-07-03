Battle_SetSoul(battle_soul_red)
time = 0
battle_enemy_inkp1.xj = -100
for (var i = 0; i <= 7; i+=1)
{
    var ins = crgb(0, 0, 204, (435 - (i * 50)), 0, bssp7, bssp8, bssp9, (40 + (i * 10)), 1, 1, 0, 0, 90, 90, choose(gb2, gb3))
    if (ins.object_index == gb2)
        ins.image_blend = c_aqua
    else
        ins.image_blend = c_orange
}
for (i = 0; i <= 7; i+=1)
{
    ins = crgb(0, 0, 436, (35 + (i * 50)), 0, bssp7, bssp8, bssp9, (40 + (i * 10)), 1, 1, 0, 0, 270, 270, choose(gb2, gb3))
    if (ins.object_index == gb2)
        ins.image_blend = c_aqua
    else
        ins.image_blend = c_orange
}
