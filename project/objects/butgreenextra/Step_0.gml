if instance_exists(battle_soul)
{
    if (xt == 2)
    {
        tl1++
        if (tl1 >= 15 && tl1 <= 20)
        {
			Battle_SetBoardSize(130,-25,55,55,5)
            bkgreenextra.ws -= 76
            bkgreenextra.xs += 38
            bkgreenextra.ys -= 12
            bkgreenextra.hs -= 3
            butgreene1.alp -= 0.1
        }
        if (tl1 == 30)
            instance_create_depth(0, 0, -20, butgreene2)
        if (((tl1 - 10) % 20) == 0 && tl1 < 760)
        {
            mk = instance_create_depth(-100, -100, 0,butgreene3)
            mk.long = 520
            mk.dir = choose(270, 90, 180, 0)
            mk.sped = 10
            switch mk.dir
            {
                case 270:
                    mk.index = 2
                case 90:
                    mk.index = 0
                case 180:
                    mk.index = 6
                case 0:
                    mk.index = 4
            }

        }
        if (((tl1 - 10) % 45) == 0 && tl1 < 730)
        {
            mk = instance_create_depth(-100, -100, 0,butgreene3)
            mk.long = 520
            mk.dir = choose(270, 90, 180, 0)
            mk.sped = 4
            switch mk.dir
            {
                case 270:
                    mk.index = 2
                case 90:
                    mk.index = 0
                case 180:
                    mk.index = 6
                case 0:
                    mk.index = 4
            }

        }
        if (tl1 >= 800 && tl1 < 830)
        {
            mk = instance_create_depth(-100, -100, 0,butgreene3)
            mk.index = 4
            mk.long = 520
            mk.dir = 90
            mk.sped = 16
        }
        if (tl1 >= 833 && tl1 < 853)
        {
            mk = instance_create_depth(-100, -100, 0,butgreene3)
            mk.index = 4
            mk.long = 520
            mk.dir = 0
            mk.sped = 16
        }
        if (tl1 >= 856 && tl1 < 876)
        {
            mk = instance_create_depth(-100, -100, 0,butgreene3)
            mk.index = 4
            mk.long = 520
            mk.dir = 270
            mk.sped = 16
        }
        if (tl1 >= 879 && tl1 < 899)
        {
            mk = instance_create_depth(-100, -100, 0,butgreene3)
            mk.index = 4
            mk.long = 520
            mk.dir = 180
            mk.sped = 16
        }
        if (tl1 == 899)
        {
            tl1 = 800
            tl2 += 1
        }
        if (tl2 == 3)
            tl1 = 901
        if (tl1 > 900)
            tl2 += 1
        if (tl2 == 20)
        {
            for (iii = 0; iii < 10; iii++)
            {
                with (instance_create_depth((260 - (iii * 23)), (80 - (sin(((iii / 20) * pi)) * 5)), 0,butgreene4))
                    type = 1
            }
        }
        if (tl2 == 30)
        {
            for (iii = 0; iii < 10; iii++)
            {
                with (instance_create_depth((380 + (iii * 23)), (80 - (sin(((iii / 20) * pi)) * 5)), 0,butgreene4))
                    type = 1
            }
        }
        if (tl2 == 40)
        {
            for (iii = 0; iii < 10; iii++)
            {
                with (instance_create_depth((260 - (iii * 23)), (50 - (sin(((iii / 20) * pi)) * 5)), 0,butgreene4))
                    type = 1
            }
        }
        if (tl2 == 50)
        {
            for (iii = 0; iii < 10; iii++)
            {
                with (instance_create_depth((380 + (iii * 23)), (50 - (sin(((iii / 20) * pi)) * 5)), 0,butgreene4))
                    type = 1
            }
        }
        if (tl2 == 45)
        {
            bkgreenextra.bl1 = 1
			Battle_SetSoul(battle_soul_red)
			instance_destroy(playerxy1)
			instance_destroy(playerxy3)
        }
        if (tl2 >= 150 && tl2 < 171)
        {
			Battle_SetBoardSize(65,65,245,245,20)
            bkgreenextra.ws += 19
            bkgreenextra.xs -= 9.5
            bkgreenextra.ys += 3.5
            bkgreenextra.hs += 0.75
            butgreene1.alp += 0.1
        }
        if (tl2 >= 180 && (tl2 % 5) == 0 && tl2 < 400)
        {
            with (instance_create_depth(160, 100, 0,butgreene4))
                type = 2
            with (instance_create_depth(480, 100, 0,butgreene4))
                type = 2
        }
        if (tl2 >= 360 && (tl2 % 41) == 0 && tl2 < 460)
        {
            instance_create_depth(130, 385, -20, butgreene5)
            instance_create_depth(510, 385, -20, butgreene5)
        }
        if (tl2 >= 410 && (tl2 % 31) == 0 && tl2 < 490)
        {
            with (instance_create_depth(130, 255, -20, butgreene5))
                image_yscale = -1.05
            with (instance_create_depth(510, 255, -20, butgreene5))
                image_yscale = -1.05
        }
        if (tl2 == 520)
            instance_create_depth(0, 315, -21, butgreene6)
        if (tl2 >= 580 && tl2 < 585)
        {
			Battle_SetBoardSize(85,65,215,215,5)
            butgreene1.yj -= 2.5
            bkgreenextra.ws -= 12
            bkgreenextra.xs += 6
            bkgreenextra.ys -= 4
            bkgreenextra.hs += 4
            bkgreenextra.bkcover = 1
        }
        if (tl2 == 565)
            instance_create_depth(319, 385, -100, butgreene8)
        if (tl2 >= 595 && (tl2 % 25) == 0 && tl2 < 1050)
        {
            with (instance_create_depth((tl2 - 502), 390, -10, butgreene4))
                type = 4
        }
        if (tl2 == 695)
        {
            dis = (bkgreenextra.ws / 5)
            instance_create_depth((dis + bkgreenextra.xs), 315, -5, butgreene7)
            instance_create_depth(((2 * dis) + bkgreenextra.xs), 315, -5, butgreene7)
            instance_create_depth(((3 * dis) + bkgreenextra.xs), 315, -5, butgreene7)
            instance_create_depth(((4 * dis) + bkgreenextra.xs), 315, -5, butgreene7)
        }
        if (tl2 >= 720 && (tl2 % 50) == 0 && tl2 < 1200)
        {
            with (instance_create_depth(160, 90, 0,butgreene4))
                type = 5
            with (instance_create_depth(480, 90, 0,butgreene4))
                type = 5
        }
        if (tl2 >= 1200 && (tl2 % 60) == 0 && tl2 < 1600)
        {
            var agl = random_range(0, 360)
            repeat (6)
            {
                with (instance_create_depth((battle_soul.x + lengthdir_x(38, agl)), (battle_soul.y + lengthdir_y(38, agl)), 0,butgreene9))
                {
                    GMU_Anim_New(id, "image_alpha", 0, 11, 0, 1, 35)
                    image_angle = (agl + 180)
                    direction = (agl + 180)
                    GMU_Anim_New(id, "image_alpha", 0, 11, 0, 1, 35)
                    image_alpha = 0
                    GMU_Anim_New(id, "speed", 0, 11, 0, 8, 20, 50)
                    image_xscale = 1
                    image_yscale = 1
                }
                agl += 60
            }
        }
        if (tl2 == 1500)
        {
            with (butgreene4)
            {
                if (type == 4)
                    GMU_Anim_New(id, "y", 1, 11, id.y, 160, 20)
            }
        }
        if (tl2 == 1610)
            butgreene7.atking = 1
        if (tl2 == 1620)
        {
            c = instance_create_depth(0, 0, 0,extraallbut2)
            c.to = 691
            c.image_blend = 65280
        }
        if (tl2 == 1710)
        {
			Battle_SetSoul(battle_soul_red)
            with (butgreene3)
                instance_destroy()
            with (butgreene4)
                instance_destroy()
            with (butgreene7)
                instance_destroy()
            with (butgreene9)
                instance_destroy()
			with (butgreene1)
                instance_destroy()
			with (butgreene2)
                instance_destroy()
            instance_destroy()
        }
    }
}

 
