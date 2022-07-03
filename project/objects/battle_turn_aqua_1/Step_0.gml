tl1 += 1
if ((tl1 % 120) == 40 && tl1 <= 900)
{
    var ax = irandom_range(80, 240)
    var ay = irandom_range(80, 400)
    crgb(-50, -50, ax, ay, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, (point_direction(ax, ay, (320 + irandom_range(-80, 80)), (310 + irandom_range(-80, 80))) + 90), 0, gb)
    ax = irandom_range(400, 560)
    ay = irandom_range(80, 400)
    crgb(690, -50, ax, ay, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, (point_direction(ax, ay, (320 + irandom_range(-80, 80)), (310 + irandom_range(-80, 80))) + 90), 0, gb)
    ax = irandom_range(80, 560)
    ay = irandom_range(80, 200)
    crgb(-50, -50, ax, ay, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, (point_direction(ax, ay, (320 + irandom_range(-80, 80)), (310 + irandom_range(-80, 80))) + 90), 0, gb)
    ax = irandom_range(80, 560)
    ay = irandom_range(390, 400)
    crgb(-50, -50, ax, ay, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, (point_direction(ax, ay, (320 + irandom_range(-80, 80)), (310 + irandom_range(-80, 80))) + 90), 0, gb)
}
if ((tl1 % 120) == 100 && tl1 <= 900)
{
    for (i = 0; i < 22; i++)
    {
        if ((i % 2) == 0)
        {
            instance_create_depth(245, (235 + (i * 10)), 0,butaqua3_1).image_angle = 0
            instance_create_depth((245 + (i * 10)), 235, 0,butaqua3_1).image_angle = 270
        }
        if ((i % 2) == 1)
        {
            instance_create_depth(395, (235 + (i * 10)), 0,butaqua3_1).image_angle = 180
            instance_create_depth((245 + (i * 10)), 385, 0,butaqua3_1).image_angle = 90
        }
    }
}
if ((tl1 % 120) == 110 && tl1 <= 900)
    butaqua3_1.c = 1
if (tl1 == 900)
{
    butaqua3_2.c = 1
	battle_board.color_frame=c_white
    Battle_EndTurn()
}

