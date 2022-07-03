tl1++
if (tl1 < 825)
{
    if ((tl1 % 40) == 0)
        instance_create_depth(-75, 285, 0,butorange2_3)
    if (((tl1 - 30) % 40) == 0)
        instance_create_depth(715, 335, 0,butorange2_1)
}
if ((tl1 % 40) == 0 && tl1 < 750 && instance_exists(battle_soul))
{
    i = irandom(2)
    crgb(((battle_soul.x < 320 * 680) - 20), (260 + (i * 50)), ((battle_soul.x < 320 * 440) + 100), (260 + (i * 50)), 30, bssp7, bssp8, bssp9, 60, 1, 1, 0, 0, ((battle_soul.x < 320 * 180) + 90), ((battle_soul.x < 320 * 180) + 90), gb)
}
if (tl1 == 825)
{
	Battle_SetSoul(battle_soul_red)
	battle_board.color_frame=c_white
	Battle_EndTurn()
    with (butorange2_1)
        instance_destroy()
    with (butorange2_3)
        instance_destroy()
}
if battle_soul.x<25
battle_soul.x=30
if battle_soul.y<225
battle_soul.y=230
if battle_soul.x>615
battle_soul.x=610
if battle_soul.y>385
battle_soul.y=380
