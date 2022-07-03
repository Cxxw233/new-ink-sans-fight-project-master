if (xt == 2 && instance_exists(battle_soul))
{
    tl1++
    if (tl1 > 40 && tl1 <= 50)
    {
		Battle_SetBoardSize(115,65,133,133,10)
        bkyellowextra.xs += 15
        bkyellowextra.ws -= 30
        bkyellowextra.ys -= 5
        bkyellowextra.hs += 5
        butyellowe1.yj -= 5
    }
    if (tl1 == 50)
        instance_create_depth(x, y, 0,butyellowe7)
    if (tl1 >= 90 && (tl1 % 50) == 0 && tl1 <= 1500)
    {
        var x_begin_left = 150
        var y_begin_left = (room_height / 2.5)
        var x_begin_right = (room_width - 150)
        var y_begin_right = (room_height / 2.5)
        var alpha_change = 0.8
        for (var i = 0; i <= 2; i++)
        {
            if (a == 1)
                var ins = instance_create_depth(x_begin_left, (y_begin_left + (35 * (2 - i))), 0, butyellowe6)
            else
                ins = instance_create_depth(x_begin_left, (y_begin_left + (35 * i)), 0, butyellowe6)
            ins.image_alpha = (0 - (i * alpha_change))
            if (a == 1)
                ins.image_angle = 180
            if (a == 1)
                ins = instance_create_depth(x_begin_right, (y_begin_right + (35 * (2 - i))), 0, butyellowe6)
            else
                ins = instance_create_depth(x_begin_right, (y_begin_right + (35 * i)), 0, butyellowe6)
            ins.image_alpha = (0 - (i * alpha_change))
            if (a == 1)
                ins.image_angle = 180
        }
    }
    if (tl1 == 90)
        Battle_SetSoul(battle_soul_gravityred)
    if (tl1 >= 160 && (tl1 % 30) == 0 && tl1 <= 760 && instance_exists(battle_soul))
    {
        cxg = choose(irandom_range(50, 220), irandom_range(420, 590))
        crgb(320, -20, cxg, 120, 15, bssp23, bssp24, bssp25, 30, 1, 1, -1, -1, (point_direction(cxg, 120, battle_soul.x, battle_soul.y) + 90), 0, gb)
    }
    if (tl1 >= 160 && (tl1 % 120) == 0 && tl1 <= 760 && instance_exists(battle_soul))
        crgb(320, -20, battle_soul.x, 120, 15,bssp23, bssp24, bssp25, 60, 1, 1, -1, -1, 0, 0, gb)
    if (tl1 >= 160 && (tl1 % 120) == 60 && tl1 <= 760 && instance_exists(battle_soul))
        crgb(320, -20, 70, battle_soul.y, 15, bssp23, bssp24, bssp25, 60, 1, 1, 1, 1, 90, 90, gb)
    if (tl1 == 100)
    {
        with (instance_create_depth(332, 371, 0,butyellowe2))
        {
            image_angle -= 90
            side = 1
        }
        with (instance_create_depth(306, 371, 0,butyellowe2))
        {
            image_angle += 90
            side = 2
        }
    }
    if (tl1 == 150)
    {
        with (butyellowe2)
            mode = 1
        instance_create_depth(204, 368, 0,butyellowe3)
    }
    if (tl1 == 815)
    {
        Battle_SetSoul(battle_soul_machine)
        a = 1
        with (butyellowe2)
        {
            mode = 0
            de = 1
        }
    }
    if (tl1 == 815)
    {
        with (butyellowe3)
            instance_destroy()
    }
    if (tl1 == 816)
    {
        with (instance_create_depth(x, y, 0,roll))
            chosen = 1
    }
    if (tl1 == 820)
        instance_create_depth(320, 240, 0,butyellowe4)
    if (tl1 >= 840 && tl1 <= 900 && (tl1 % 3) == 0)
        crgb(((bkyellowextra.xs + ((tl1 - 840) * 4)) - 50), -200, ((bkyellowextra.xs + ((tl1 - 840) * 4)) - 10), 120, 15, bssp23, bssp24, bssp25, 30, 1, 1, 5, 5, 0, 0, gb)
    if (tl1 == 900)
        crgb(bkyellowextra.xs, -200, ((bkyellowextra.xs + bkyellowextra.ws) - 10), bkyellowextra.ys, 15, bssp23, bssp24, bssp25, 30, 1, 1, 0, 15, (point_direction(((bkyellowextra.xs + bkyellowextra.ws) - 10), bkyellowextra.ys, butyellowe7.x, butyellowe7.y) + 90), 0, gb)
    if (tl1 == 930)
    {
        crgb(320, -20, battle_soul.x, 120, 15, bssp23, bssp24, bssp25, 30, 1, 1, -1, -1, 0, 0, gb)
        crgb(320, -20, 70, battle_soul.y, 15, bssp23, bssp24, bssp25, 30, 1, 1, 1, 1, 90, 90, gb)
    }
    if (tl1 == 980)
        crgb((bkyellowextra.xs + 400), -90, bkyellowextra.xs, 120, 12, bssp23, bssp24, bssp25, 30, 1, 1, 1, 1, 0, 0, gb)
    if (tl1 == 1020)
    {
        crgb(320, -20, battle_soul.x, 120, 15, bssp23, bssp24, bssp25, 30, 2, 2, -1, -1, 0, 0, gb)
        crgb(320, -20, (battle_soul.x - 100), 120, 15, bssp23, bssp24, bssp25, 30, 1, 1, 1, 1, 0, 0, gb)
        crgb(320, -20, (battle_soul.x + 100), 120, 15, bssp23, bssp24, bssp25, 30, 1, 1, 1, 1, 0, 0, gb)
    }
    if (tl1 >= 1020 && tl1 <= 1220)
        __view_set((4 << 0), 0, (sin(((tl1 - 1020) / 9)) * 20))
    if (tl1 >= 1020 && tl1 <= 1220 && (tl1 % 15) == 0)
        crgb(320, -20, (300 + (sin(((tl1 - 1020) / 2)) * 300)), (120 + (sin(((tl1 - 1020) / 4)) * 150)), 15, bssp23, bssp24, bssp25, 60, 1, 1, 1, 1, (sin(((tl1 - 1020) / 2)) * 30), 0, gb)
    if (tl1 >= 1020 && tl1 <= 1220 && (tl1 % 15) == 7)
        crgb(320, -20, (300 - (sin(((tl1 - 1020) / 2)) * 300)), (120 + (sin(((tl1 - 1020) / 4)) * 150)), 15, bssp23, bssp24, bssp25, 60, 1, 1, 1, 1, (sin(((tl1 - 1020) / 2)) * 30), 0, gb)
    if (tl1 == 1340)
    {
        crgb(320, -20, bkyellowextra.xs, 120, 15, bssp23, bssp24, bssp25, 20, 0.8, 0.8, 1, 1, 0, 0, gb)
        crgb(320, -20, (bkyellowextra.xs + bkyellowextra.ws), 480, 15, bssp23, bssp24, bssp25, 15, 0.8, 0.8, 1, 1, 180, 0, gb)
        crgb(320, -20, 80, bkyellowextra.ys, 15, bssp23, bssp24, bssp25, 20, 0.8, 0.8, 1, 1, 90, 90, gb)
        crgb(320, -20, 550, (bkyellowextra.ys + bkyellowextra.hs), 15, bssp23, bssp24, bssp25, 15, 0.8, 0.8, 1, 1, 270, 270, gb)
    }
    if (tl1 == 1380)
    {
        crgb(bkyellowextra.xs, -200, ((bkyellowextra.xs + bkyellowextra.ws) - 10), bkyellowextra.ys, 15, bssp23, bssp24, bssp25, 15, 0.7, 0.7, 0, 15, (point_direction(((bkyellowextra.xs + bkyellowextra.ws) - 10), bkyellowextra.ys, butyellowe7.x, butyellowe7.y) + 90), 0, gb)
        crgb(bkyellowextra.xs, -200, (bkyellowextra.xs + 10), bkyellowextra.ys, 15, bssp23, bssp24, bssp25, 15, 0.7, 0.7, 0, 15, (point_direction((bkyellowextra.xs + 10), bkyellowextra.ys, butyellowe7.x, butyellowe7.y) + 90), 0, gb)
    }
    if (tl1 >= 1400 && tl1 <= 1410)
        crgb(0, 0, 300, 120, 15, bssp23, bssp24, bssp25, 30, 0.9, 0.9, -1, -1, ((-60 + ((tl1 % 10) * 12)) + ((tl1 - 1340) / 6)), 0, gb)
    if (tl1 >= 1460 && tl1 <= 1470)
        crgb(700, 0, 300, 120, 15, bssp23, bssp24, bssp25, 30, 0.9, 0.9, -1, -1, ((60 - ((tl1 % 10) * 12)) + ((tl1 - 1340) / 6)), 0, gb)
    if (tl1 == 1400)
    {
        if (battle_soul.x < 653)
            cxg = -1
        else
            cxg = 1
        cxg += random_range(-0.3, 0.2)
    }
    if (tl1 >= 1490 && tl1 <= 1560 && (tl1 % 20) >= 10)
        crgb(0, 0, 300, 120, 15, bssp23, bssp24, bssp25, 30, 0.8, 0.8, -1, -1, ((-60 + ((tl1 % 10) * 12)) + (((tl1 - 1340) / 6) * cxg)), 0, gb)
    if (tl1 >= 1500 && tl1 <= 1560 && (tl1 % 20) < 10)
        crgb(700, 0, 300, 120, 15,bssp23, bssp24, bssp25, 30, 0.8, 0.8, -1, -1, ((60 - ((tl1 % 10) * 12)) + (((tl1 - 1340) / 6) * cxg)), 0, gb)
    if (tl1 == 1620)
    {
        Battle_SetSoul(battle_soul_red)
        battle_soul.sprite_index = spr_battle_soul_red
        battle_soul.speed = 0
        butyellowe4.time_release = 13
    }
    if (tl1 >= 1780 && tl1 < 1800)
    {
		Battle_SetBoardSize(135,45,133,133,20)
        bkyellowextra.ys--
        butyellowe1.yj--
    }
    if (tl1 >= 1800 && tl1 < 1810)
    {
        with (butyellowe7)
        {
            stay = 0
            y -= 0.5
        }
    }
    if (tl1 == 1810)
    {
        with (butyellowe7)
            instance_destroy()
        butyellowe4.time_release = 65
    }
    if (tl1 > 1805 && tl1 <= 1815)
    {
		Battle_SetBoardSize(185,45,283,283,10)
        bkyellowextra.ys -= 5
        bkyellowextra.hs += 5
        bkyellowextra.xs -= 15
        bkyellowextra.ws += 30
        butyellowe1.yj -= 5
    }
    if (tl1 == 1805)
    {
        with (instance_create_depth(0, 0, 0,butyellowe9))
            side = 1
        with (instance_create_depth(640, 0, 0,butyellowe9))
            side = 2
    }
    if (tl1 == 2140)
    {
        repeat (11)
        {
            with (instance_create_depth(bkyellowextra.xs, ((bkyellowextra.ys + iii) + 11), 0,butyellowe8))
            {
                speed = 1
                direction = 0
            }
            with (instance_create_depth((bkyellowextra.xs + bkyellowextra.ws), ((bkyellowextra.ys + iii) + 11), 0,butyellowe8))
            {
                speed = 1
                direction = 180
            }
            iii += 22
        }
    }
    if (tl1 == 2210)
    {
        with (butyellowe8)
        {
            if (x < 320)
            {
                speed = 20
                direction = 0
                gravity = 1
                gravity_direction = 180
            }
            if (x > 320)
            {
                speed = 20
                direction = 180
                gravity = 1
                gravity_direction = 0
            }
        }
    }
    if (tl1 == 2215)
    {
        with (butyellowe4)
            instance_destroy()
    }
    if (tl1 > 2215 && tl1 < 2280)
    {
        Battle_SetSoul(battle_soul_yellow)
        if (battle_soul.image_angle != 180)
            battle_soul.image_angle += 15
    }
    if (tl1 >= 2220 && (tl1 % 8) == 0 && tl1 < 2780)
    {
        with (instance_create_depth(((bkyellowextra.xs + bkyellowextra.ws) + 10), random_range(bkyellowextra.ys, (bkyellowextra.ys + bkyellowextra.hs)), 0,butyellowe10))
        {
            dir = (180 + random_range(-20, 20))
            speed = 2
            direction = dir
        }
    }
    if (tl1 == 2220)
    {
        alarm[0] = 1
        antialp = 1
    }
    if (tl1 >= 2105 && (tl1 % 60) == 0 && tl1 < 2605)
        instance_create_depth(random_range(110, 410), 0, -10, butyellowe11)
    if (tl1 == 2905)
    {
        c = instance_create_depth(0, 0, 0,extraallbut2)
        c.to = butyellowe1
        c.image_blend = c_yellow
        with (butyellowe13)
            instance_destroy()
    }
    if (tl1 == 3000)
    {
		Battle_SetSoul(battle_soul_red)
        with (butyellowe1)
            instance_destroy()
        with (bkyellowextra)
            instance_destroy()
        with (butyellowe10)
            instance_destroy()
        with (butyellowe11)
            instance_destroy()
        with (butyellowe12)
            instance_destroy()
    }
}
 