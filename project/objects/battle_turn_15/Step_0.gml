time += 1
if time=1&&to_end=0
{
	(instance_create_depth(0,0,0,but3_1_1)).yj-=20
}
if time>1&&time<=30&&to_end=0
battle_enemy_inkp1.xj-=4
var obj_heartx=battle_soul.x
var obj_hearty=battle_soul.y
    if (time == 75)
    {
        switch irandom(6)
        {
            case 1:
                for (var i = 0; i <= 2; i++)
                    crgb(-100, (165 + (i * 44)), 144, (205 + (i * 44)), 20, bssp7, bssp8, bssp9, 35, 1, 1, 0, 0, 90, 90, gb)
                break
			case 2:
                for (var i = 0; i <= 2; i++)
                    crgb(-100, (145 + (i * 44)), 144, (225 + (i * 44)), 20, bssp7, bssp8, bssp9, 35, 1, 1, 0,0,random(360), random(360), gb)
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
			    for (var i = 0; i <= 6; i++)
                    crgb(200, 740, ((380 - 34) - (i * 25)), (420 + 44), 20, bssp7, bssp8, bssp9, 35, 0.5, 0.5, 0, 0, 180, 180, gb)
                break
			case 5:
			   var gb_x = random(640)
               var gb_y = random(480)
               var gb_angle = (point_direction(gb_x, gb_y, battle_soul.x, battle_soul.y) + 90)
               crgb(random(640), -100, gb_x, gb_y, 30, bssp7, bssp8, bssp9, 60, 1, 1, 0, 0, gb_angle, 0, gb)
               break
			case 6:
			   var gb_x = random(640)
               var gb_y = random(480)
               var gb_angle = (point_direction(gb_x, gb_y, battle_soul.x, battle_soul.y) + random(360))
			   crgb(-100, -100, battle_soul_red.x, battle_soul_red.y, 30, bssp7, bssp8, bssp9, 60, 1, 1, 0, 0, gb_angle, 0, gb)
		}

        time = 0
        to_end += 1
    }
	if time>45&&time<=75&&to_end=11
battle_enemy_inkp1.xj+=4
    if (frac(((time + 20) / 40)) == 0)
        instance_create_depth((436 + battle_enemy_inkp1.xj), (102 + battle_enemy_inkp1.yj), 0,but3_3)
    if (frac((time / 40)) == 0)
        instance_create_depth((466 + battle_enemy_inkp1.xj), (102 + battle_enemy_inkp1.yj), 0,but3_2)
    if (to_end >= 12)
    {
        Battle_EndTurn()
		instance_destroy(but3_1_1)
        battle_enemy_inkp1.yj = 0
    }