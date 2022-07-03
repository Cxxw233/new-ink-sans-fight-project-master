battle_enemy_inkp1.nowhppl=99
if (a < 1 || xt > 3)
    a += 1
if (a == 1)
{
    switch xt
    {
        case 0:
            if (instance_exists(talk1) == 0)
                crtalk1(380, 74, "But could you listen/to me,for once?", 1)
            boss1.touxt = 1
            break
        case 1:
            if (instance_exists(talk1) == 0)
                crtalk1(380, 74, ".___.___.___Well,I will think/as you agree.", 1)
            boss1.touxt = 2
            break
        case 2:
            if (instance_exists(talk1) == 0)
                crtalk1(380, 74, "If the killing can/not bring you/any happiness...", 1)
            boss1.touxt = 3
            break
        case 3:
            if (instance_exists(talk1) == 0)
                crtalk1(380, 74, "Would you stop?", 1)
            break
    }

}
//if (a == 2)
    //instance_create_depth(0, 0, 0, but19_chara)
	//粗孔写的废稿
if (a > 40 && a <= 320)
{
    time_1_1 += 1
    if (time_1_1 == 8)
    {
        time_1_1 = 0
        instance_create_depth(0, random_range(268, 388), -10, asset_get_index(("but19_bone_" + string(choose(1, 2)))))
    }
    time_1_2 += 1
    if (time_1_2 == 20)
    {
        time_1_2 = 0
        var gb_x_start = choose(random_range(-300, -100), random_range(740, 1040))
        var gb_y_start = random_range(-200, -100)
        var gb_x_end = random(640)
        var gb_y_end = random(480)
        var gb_angle = (point_direction(gb_x_end, gb_y_end, battle_soul.x, battle_soul.y) + 90)
        crgb(gb_x_start, gb_y_start, gb_x_end, gb_y_end, 20, bssp23, bssp24, bssp25, 20, 1, 1, 0, 0, gb_angle, 30, gb)
    }
}
if (a == 320)
{
    for (var i = 0; i <= 16; i++)
    {
        var temp_gb1 = crgb(0, -100, (0 + (i * 20)), 100, 30, bssp23, bssp182, bssp183, 30, 1, 1, 0, 0, 0, 0, gb2)
        var temp_gb2 = crgb(640, -100, (640 - (i * 20)), 100, 30, bssp23, bssp184, bssp185, 30, 1, 1, 0, 0, 0, 0, gb3)
        temp_gb1.image_blend = c_aqua
        temp_gb2.image_blend = c_orange
    }
}
if (a == 360)
{
	Battle_SetBoardSize(65,65,150,150,1)
    instance_destroy(but19_bone_1)
    instance_destroy(but19_bone_2)

}
if (a == 380)
{
    instance_create_depth(402, 317.5, -5, but19_spin_orange)
}
if (a == 380)
{
    (instance_create_depth(402, 317.5, -5, but19_spin_orange)).image_angle = 90
}
if (a == 380)
{
    instance_create_depth(257, 317.5, -5, but19_spin_aqua)
}
if (a == 380)
{
    (instance_create_depth(257, 317.5, -5, but19_spin_aqua)).image_angle = 90
}
if (a >= 360 && a <= 640)
{
    time_2 += 1
    if (time_2 >= time_2_extra)
    {
        for (i = 0; i <= 7; i++)
            (instance_create_depth(0, 0, -5, but19_bone_3)).pos = i
        time_2 = 0
        time_2_extra -= 3
    }
}
if (a == 640)
{
    crgb(-100, 0, 200, 317.5, 90, bssp23, bssp24, bssp25, 30, 1, 1, 360, 360, 90, 0, gb)
    crgb(740, 0, 440, 317.5, 90, bssp23, bssp24, bssp25, 30, 1, 1, 360, 360, 270, 0, gb)
}
if (a >= 640 && a <= 1000)
{
    time_3 += 1
    if (time_3 >= 10)
    {
        instance_create_depth(random(640), random(200), -5, but19_bone_4)
        time_3 = 0
    }
}
if (a == 960)
    instance_create_depth(310, -300, -5, but19_bone_big)
if (a >= 1120)
{
	audio_stop_all()
	scr_blackscreen(20)
	battle_enemy_inkp1.boss1xt=0
	boss1.touxt=4
	boss1.shenxt=1
	boss1.jioxt=1
	boss1.phase=1
    instance_destroy(but19_bone_4)
	instance_destroy(gb)
	instance_destroy()
	room_speed=50
	Battle_SetMenuDialog("* You feel your sins crawling&on your back.")
	Battle_EndTurn()
}
