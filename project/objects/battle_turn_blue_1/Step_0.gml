tl1++
if ((tl1 % 40) == 0)
{
    repeat (5)
        instance_create_depth((40 + (irandom(275) * 2)), 205, 0,butblue3_4)
}
if (tl1 == 150 && instance_exists(butblue3_2))
    butblue3_2.xt = choose(1, 3)
if (tl1 == 225)
{
    crgb(-20, 320, 30, 320, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 90, 90, gb)
    crgb(660, 320, 610, 320, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 270, 270, gb)
}
if (tl1 == 218 && instance_exists(butblue3_2))
    butblue3_2.xt = choose(1, 3)
if (tl1 == 300)
{
    crgb(-20, 260, 30, 260, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 90, 90, gb)
    crgb(660, 260, 610, 260, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 270, 270, gb)
    crgb(-20, 380, 30, 380, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 90, 90, gb)
    crgb(660, 380, 610, 380, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 270, 270, gb)
}
if (tl1 == 375 && instance_exists(butblue3_2))
    butblue3_2.xt = choose(1, 3)
if (tl1 == 675)
{
	battle_board.color_frame=c_white
    Battle_EndTurn()
    with (butblue3_1)
        instance_destroy()
    with (butblue3_2)
        instance_destroy()
    with (butblue3_4)
        instance_destroy()
}
