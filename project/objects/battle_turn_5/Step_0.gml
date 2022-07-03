time += 1
if time = 1 && to_end = 0{

Battle_SetSoul(battle_soul_red)
}
if (xt == global.xt_begin)
{
    if (time >= 120)
    {
        var gb_x = random_range(320, 640)
        var gb_y = random_range(100, 160)
        var gb_angle = (point_direction(gb_x, gb_y, 732, battle_soul.y) + 0)
        crgb(random(640), -100, gb_x, gb_y, 30,bssp7,bssp8,bssp9, 60, 1, 1, 15, 15, gb_angle, gb_angle, gb)
        gb_x = (320 - (gb_x - 320))
        gb_angle = (point_direction(gb_x, gb_y,battle_soul.x,battle_soul.y) + 90)
        crgb(random(640), -100, gb_x, gb_y, 30, bssp7, bssp8, bssp9, 60, 1, 1, 15, 15, gb_angle, gb_angle,gb)
        time = 0
        to_end += 1
    }
    if (frac((time / 80)) == 0)
    {
        //instance_create_depth(0, 255, 0, obj_phase1_5_bone)
        (instance_create_depth(640, 278, 0, obj_phase1_5_bone)).direction = 180
    }
    if (to_end >= 12)
    {
	Battle_EndTurn()
    }
}


 