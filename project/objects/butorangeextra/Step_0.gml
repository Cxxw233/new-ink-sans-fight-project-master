 if instance_exists(battle_soul)
{
    tl1++
    if (tl1 == 10)
    {
        but = instance_create_depth(20, 320, 0, butorangee2)
        but.mode = 0
        but.image_angle = 180
        GMU_Anim_New(but, "x", 1, 12, 20, 60, 50)
        but = instance_create_depth(80, 280, 0, butorangee2)
        but.mode = 0
        but.image_angle = -90
        GMU_Anim_New(but, "image_angle", 1, 12, -90, -90, 50)
        but = instance_create_depth(80, 360, 0, butorangee2)
        but.mode = 0
        but.image_angle = 90
        GMU_Anim_New(but, "image_angle", 1, 12, 90, 90, 50)
        but = instance_create_depth(620, 320, 0, butorangee2)
        but.mode = 1
        but.image_angle = 0
        GMU_Anim_New(but, "x", 1, 12, 620, -60, 50)
    }
    if (tl1 == 150)
    {
        c = instance_create_depth(320, 320, 0,butorangee4)
        c.image_alpha = 0
    }
    if (tl1 >= 80 && (tl1 % 15) == 0 && tl1 < 350)
    {
        var cho = choose(280, 320, 360)
        but = instance_create_depth(172, cho, 0, butorangee3)
        var spd = random_range(2, 5)
        but.speed = spd
        but.spd = spd
        but.drawr = 5
    }
    if (tl1 >= 350 && (tl1 % 20) == 0 && tl1 < 450)
    {
        cho = choose(320, 360)
        but = instance_create_depth(172, cho, 0, butorangee3)
        spd = random_range(2, 5)
        but.speed = spd
        but.spd = spd
        but.drawr = 5
    }
    if (tl1 >= 450 && (tl1 % 25) == 0 && tl1 < 590)
    {
        cho = choose(320, 360)
        but = instance_create_depth(172, cho, 0, butorangee3)
        spd = random_range(2, 5)
        but.speed = spd
        but.spd = spd
        but.drawr = 5
    }
    if (tl1 == 350)
    {
        with (butorangee2)
        {
            if (mode == 0 && y == 280)
            {
                mode = 3
                GMU_Anim_New(id, "x", 1, 12, x, -180, 90)
                alarm[3] = 90
            }
        }
        but = instance_create_depth(650, random_range(265, 375), 0, butorangee2)
        but.mode = 1
        but.image_angle = 0
        GMU_Anim_New(but, "x", 1, 12, 650, -90, 50)
    }
    if (tl1 == 450)
    {
        with (butorangee2)
        {
            if (mode == 0 && y == 360)
            {
                mode = 3
                GMU_Anim_New(id, "x", 1, 12, x, -180, 90)
                alarm[3] = 90
            }
        }
        but = instance_create_depth(650, random_range(265, 375), 0, butorangee2)
        but.mode = 1
        but.image_angle = 0
        GMU_Anim_New(but, "x", 1, 12, 650, -90, 50)
    }
    if (tl1 == 590)
    {
        with (butorangee2)
        {
            if (mode == 0)
            {
                mode = 2
                alarm[3] = 380
            }
        }
    }
    if (tl1 == 680)
    {
        with (butorangee2)
        {
            if (mode == 1)
            {
                mode = 3
                GMU_Anim_New(id, "image_alpha", 0, 11, 1, -1, 50)
                alarm[3] = 60
            }
        }
    }
    if (tl1 == 750)
        butorangee4.mode = 2
    if (tl1 == 780)
    {
        butorangee4.mode = 1
        with (butorangee2)
        {
            if (mode == 2)
            {
                mode = 3
                alarm[3] = 60
            }
            else if (mode == 1)
            {
                mode = 3
                alarm[3] = 60
            }
        }
    }
    if (tl1 == 800)
    {
        c = instance_create_depth(320, 275, 0,butorangee4)
        c.image_alpha = 1
        c.mode = 4
    }
    if (tl1 == 840)
    {
        but = instance_create_depth(-100, 275, 0,butorangee6)
        but.image_angle = 90
        but.mode = -1
        but.sprite_index = battleextraorange_13
        GMU_Anim_New(but, "x", 1, 12, -100, 180, 80)
        GMU_Anim_New(but, "mode", 1, 12, 0, 0, 1, 80)
        but = instance_create_depth(740, 275, 0,butorangee6)
        but.image_angle = -90
        but.mode = -1
        but.sprite_index = battleextraorange_13
        GMU_Anim_New(but, "x", 1, 12, 740, -180, 80)
        GMU_Anim_New(but, "mode", 1, 12, -2, 0, 1, 80)
        var yy = 0
        repeat (4)
        {
            but = instance_create_depth(-100, ((230 + yy) - 60), 0,butorangee6)
            but.image_angle = 90
            but.mode = 2
            but.image_index = 0
            yy += 25
        }
        yy = 0
        repeat (4)
        {
            but = instance_create_depth(-100, ((320 - yy) + 60), 0,butorangee6)
            but.image_angle = 90
            but.mode = 2
            but.image_index = 0
            yy += 25
        }
        yy = 0
        repeat (4)
        {
            but = instance_create_depth(740, ((230 + yy) - 60), 0,butorangee6)
            but.image_angle = -90
            but.mode = 2
            but.image_index = 0
            yy += 25
        }
        yy = 0
        repeat (4)
        {
            but = instance_create_depth(740, ((320 - yy) + 60), 0,butorangee6)
            but.image_angle = -90
            but.mode = 2
            but.image_index = 0
            yy += 25
        }
    }
    if (tl1 > 890 && (tl1 % 40) == 0)
    {
    }
    if (tl1 == 900)
    {
        with (butorangee4)
        {
            if (mode != 4 && mode != 1)
                instance_destroy()
        }
    }
    if (tl1 == 919)
    {
        with (butorangee4)
        {
            if (mode != 1)
                mode = 3
        }
    }
    if (tl1 == 920)
    {
        c = instance_create_depth((battle_soul.x + lengthdir_x(600, 0)), (battle_soul.y + lengthdir_y(600, 0)), 0,butorangee4)
        c.mode = 5
        c = instance_create_depth((battle_soul.x + lengthdir_x(600, 45)), (battle_soul.y + lengthdir_y(600, 45)), 0,butorangee4)
        c.mode = 6
    }
    if (tl1 > 920 && (tl1 % 120) == 0 && tl1 < 1380)
    {
        cho = choose(1, 2)
        if (cho == 1)
        {
            yy = 0
            repeat (4)
            {
                but = instance_create_depth(106, ((320 - yy) + 60), 0,butorangee7)
                but.image_angle = 90
                but.image_yscale = 26.7
                but.image_xscale = 0.5
                but.mode = 2
                but.image_alpha = 0
                but.image_index = 2
                yy += 25
            }
        }
        else
        {
            yy = 0
            repeat (4)
            {
                but = instance_create_depth(106, ((230 + yy) - 60), 0,butorangee7)
                but.image_angle = 90
                but.image_yscale = 26.7
                but.image_xscale = 0.5
                but.mode = 2
                but.image_alpha = 0
                but.image_index = 2
                yy += 25
            }
        }
    }
    if (tl1 == 1400)
    {
        with (butorangee6)
        {
            if (y == 275)
            {
                mode = -3
                sprite_index = battleextraorange_13
            }
        }
        with (butorangee7)
        {
            if (y == 275)
            {
                mode = 3
                image_index = 0
            }
        }
        with (butorangee4)
        {
            if (mode == 5 || mode == 6)
                cc = 1
            if (mode == 3)
                mode = 7
        }
        with (butorangee3)
        {
            if (mode == 6)
                bounce = 0
        }
    }
    if (tl1 > 1400 && (tl1 % 20) == 0 && tl1 < 1700)
    {
        but = instance_create_depth(random_range(100, 540), random_range(170, 380), 0,butorangee4)
        but.image_alpha = 0
        but.image_xscale = 0
        but.image_yscale = 0
        but.mode = 8
    }
    if (tl1 == 1700)
    {
        but = instance_create_depth(320, 275, 0,butorangee4)
        but.image_alpha = 0
        but.image_xscale = 0
        but.image_yscale = 0
        but.mode = 8
    }
    if (tl1 == 1760)
    {
        instance_create_depth(320, 275, 0,butorangee8)
        var dirrr = 0
        repeat (4)
        {
            but = instance_create_depth(320, 275, 0,butorangee5)
            but.image_angle = dirrr
            but.mode = 1
            but.image_index = 3
            but.image_xscale = 1
            but.image_yscale = 600
            dirrr += 90
        }
    }
    if (tl1 == 2210)
    {
        with (butorangee7)
            mode = -5
        with (butorangee5)
            mode = 9
        with (butorangee6)
        {
            if (mode != 0 || mode != -2)
                mode = 10
        }
        with (butorangee4)
        {
            mode = -5
            battle_soul.xt = 1
        }
        yy = 0
        repeat (4)
        {
            but = instance_create_depth(106, ((320 - yy) + 60), 0,butorangee7)
            but.image_angle = 90
            but.image_yscale = 26.7
            but.image_xscale = 0.5
            but.mode = 5
            but.image_alpha = 1
            but.image_index = 1
            yy += 25
        }
        yy = 0
        repeat (4)
        {
            but = instance_create_depth(106, ((230 + yy) - 60), 0,butorangee7)
            but.image_angle = 90
            but.image_yscale = 26.7
            but.image_xscale = 0.5
            but.mode = 5
            but.image_alpha = 1
            but.image_index = 1
            yy += 25
        }
        c = instance_create_depth(0, 0, 0,extraallbut2)
        c.to = butorangee1
        c.image_blend = c_orange
    }
    if (tl1 == 2310)
    {
		Battle_SetSoul(battle_soul_red)
		instance_destroy(bkorangeextra)
        instance_destroy(butorangee1)
		instance_destroy(butorangee2)
        instance_destroy(butorangee3)
        instance_destroy(butorangee4)
        instance_destroy(butorangee5)
        instance_destroy(butorangee6)
        instance_destroy(butorangee7)
        instance_destroy(butorangee8)
        instance_destroy()
    }
}

