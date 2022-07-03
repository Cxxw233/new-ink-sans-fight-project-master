time += 1
if time=1&&to_end=0{
Battle_SetSoul(battle_soul_red)
}
if (xt == global.xt_begin)
{
    if (time >= 90)
    {
        repeat (1)
        {
            var gb_x = random_range(44, 606)
            var gb_y = random_range(144, 244)
            var angle = random(360)
            var i = 0
            if (i <= 7)
            {
                crgb(random(640), -100, gb_x, gb_y, 40, bssp7, bssp8, bssp9, ((120 + (i * 5)) - (to_end * 3)), 1, 1, 0, 0, ((0 + (i * 45)) + angle), ((0 + (i * 45)) + angle), gb)
                for (i++; i <= 7; i++)
                    crgb(random(640), -100, gb_x, gb_y, 40, bssp7, bssp8, bssp9, ((120 + (i * 5)) - (to_end * 3)), 1, 1, 0, 0, ((0 + (i * 45)) + angle), ((0 + (i * 45)) + angle), gb)
            }
            instance_create_depth(0, 0, 0, obj_phase1_6_screen)
        }
        to_end += 1
        time = 0
    }
    if (to_end >= 8)
    {  	
		Battle_EndTurn()
        with (obj_phase1_6_screen)
            instance_destroy()
        camera_set_view_angle(view_camera[0], 0)
    }
}

 