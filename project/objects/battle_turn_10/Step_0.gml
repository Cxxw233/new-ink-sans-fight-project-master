var obj_heartx = battle_soul.x
var obj_hearty = battle_soul.y
if (xt == global.xt_begin)
{
    time += 1
    if (time == 75)
    {
        switch irandom(6)
        {
            case 0:
                crgb(random_range(-200, -100), -100, obj_heartx, (obj_hearty - 88), 15, bssp7, bssp8, bssp9, 30, 0.8, 0.8, 0, 0, 0, 0, gb)
                crgb(random_range(740, 840), -100, (obj_heartx - 88), (obj_hearty - 88), 15, bssp7, bssp8, bssp9, 30, 0.8, 0.8, 0, 0, 45, 45, gb)
                crgb(random_range(740, 840), -100, (obj_heartx - 88), obj_hearty, 15, bssp7, bssp8, bssp9, 30, 0.8, 0.8, 0, 0, 90, 90, gb)
                crgb(random_range(740, 840), 580, (obj_heartx - 88), (obj_hearty + 88), 15, bssp7, bssp8, bssp9, 30, 0.8, 0.8, 0, 0, 135, 135, gb)
                crgb(random_range(-200, -100), -100, obj_heartx, (obj_hearty + 88), 15, bssp7, bssp8, bssp9, 30, 0.8, 0.8, 0, 0, 180, 180, gb)
                crgb(random_range(-200, -100), -100, (obj_heartx + 88), (obj_hearty + 88), 15, bssp7, bssp8, bssp9, 30, 0.8, 0.8, 0, 0, 225, 225, gb)
                crgb(random_range(-200, -100), 580, (obj_heartx + 88), obj_hearty, 15, bssp7, bssp8, bssp9, 30, 0.8, 0.8, 0, 0, 270, 270, gb)
                crgb(random_range(-200, -100), 580, (obj_heartx + 88), (obj_hearty - 88), 15, bssp7, bssp8, bssp9, 30, 0.8, 0.8, 0, 0, 315, 315, gb)
                break
            case 1:
                for (var i = 0; i <= 2; i++)
                    crgb(-100, (185 + (i * 44)), 144, (185 + (i * 44)), 20, bssp7, bssp8, bssp9, 35, 1, 1, 0, 0, 90, 90, gb)
                break
            case 2:
                for (i = 0; i <= 2; i++)
                    crgb(740, (440 + (i * 44)), 496, (345 - (i * 44)), 20, bssp7, bssp8, bssp9, 35, 1, 1, 0, 0, 270, 270, gb)
                break
            case 3:
                var gb_x = random_range(100, 300)
                var gb_y = random_range(40, 440)
                var gb_angle = (point_direction(gb_x, gb_y, obj_heartx, obj_hearty) + 90)
                crgb(-100, -100, gb_x, gb_y, 15, bssp7, bssp8, bssp9, 30, 1, 1, 0, 0, gb_angle, gb_angle, gb)
                gb_x = random_range(300, 540)
                gb_y = random_range(40, 440)
                gb_angle = (point_direction(gb_x, gb_y, obj_heartx, obj_hearty) + 90)
                crgb(-100, -100, gb_x, gb_y, 15, bssp7, bssp8, bssp9, 30, 1, 1, 0, 0, gb_angle, gb_angle, gb)
                break
            case 4:
                repeat (4)
                {
                    gb_x = random_range(100, 540)
                    gb_y = random_range(40, 440)
                    gb_angle = (point_direction(gb_x, gb_y, obj_heartx, obj_hearty) + 90)
                    crgb(-100, -100, gb_x, gb_y, 15, bssp7, bssp8, bssp9, 30, 0.5, 0.5, 0, 0, gb_angle, gb_angle, gb)
                }
                break
            case 5:
                for (i = 0; i <= 2; i++)
                    crgb(random(640), -100, ((160 + 34) + (i * 50)), (180 - 44), 20, bssp7, bssp8, bssp9, 35, 1, 1, 0, 0, 0, 0, gb)
                break
            case 6:
                for (i = 0; i <= 2; i++)
                    crgb(random(640), 740, ((320 - 34) - (i * 50)), (460 + 44), 20, bssp7, bssp8, bssp9, 35, 1, 1, 0, 0, 180, 180, gb)
                break
        }

        time = 0
        to_end += 1
    }
    if (to_end >= 12)
    {
        Battle_EndTurn()
        battle_enemy_inkp1.yj = 0
    }
}

 
