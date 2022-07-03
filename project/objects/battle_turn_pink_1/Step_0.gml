tl1++
if tl1=1
{
	battle_soul.x=320
	battle_soul.y=250
}
if tl1 <= 10{
battle_enemy_inkp1.yj-=9
}
if (tl1 == 30)
    instance_create_depth(0, 0, 0,butpink1_2)
if (((tl1 - 30) % 40) == 0 && tl1 < 750)
{
    switch irandom(2)
    {
        case 0:
            crgb(255, -20, 255, 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
            crgb(215, -20, 215, 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
            crgb(425, -20, 425, 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
            crgb(385, -20, 385, 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
            crgb(-20, 175, 100, 175, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
            crgb(-20, 135, 100, 135, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
            crgb(-20, 305, 100, 305, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
            crgb(-20, 345, 100, 345, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
            break
        case 1:
            switch irandom(3)
            {
                case 0:
                    for (var i = 0; i < 3; i++)
                        crgb((165 - (i * 40)), -20, (165 - (i * 40)), 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
                    for (i = 0; i < 3; i++)
                        crgb((475 - (i * 40)), -20, (475 - (i * 40)), 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
                    break
                case 1:
                    for (i = 0; i < 3; i++)
                        crgb((165 + (i * 40)), -20, (165 + (i * 40)), 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
                    for (i = 0; i < 3; i++)
                        crgb((475 + (i * 40)), -20, (475 + (i * 40)), 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
                    break
                case 2:
                    for (i = 0; i < 3; i++)
                        crgb(-20, (85 - (i * 40)), 100, (85 - (i * 40)), 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
                    for (i = 0; i < 3; i++)
                        crgb(-20, (395 - (i * 40)), 100, (395 - (i * 40)), 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
                    break
                case 3:
                    for (i = 0; i < 3; i++)
                        crgb(-20, (85 + (i * 40)), 100, (85 + (i * 40)), 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
                    for (i = 0; i < 3; i++)
                        crgb(-20, (395 + (i * 40)), 100, (395 + (i * 40)), 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
                    break
            }

            break
        case 2:
            i = irandom(2)
            var j = irandom(2)
            for (k = 0; k < 3; k++)
            {
                if (k != i)
                    crgb((270 + (k * 50)), -20, (270 + (k * 50)), 100, 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 0, 0, gb)
            }
            for (k = 0; k < 3; k++)
            {
                if (k != j)
                    crgb(-20, (190 + (k * 50)), 100, (190 + (k * 50)), 20, bssp7, bssp8, bssp9, 70, 1, 1, 0, 0, 90, 90, gb)
            }
            break
    }

}
if tl1 >= 825&&tl1<835{
battle_enemy_inkp1.yj+=9
}
if (tl1 == 835)
{
	battle_board.color_frame= c_white
    Battle_EndTurn()
    with (butpink1_2)
        instance_destroy()
}
