if (xt == 2)
{
    tl1++
    if (tl1 == 40)
    {
        instance_create_depth(320, 250, 0,butpinke2)
        instance_create_depth(320, 390, 0,butpinke2)
        instance_create_depth(32, 320, 0,butpinke2)
        instance_create_depth(607, 320, 0,butpinke2)
    }
    if (tl1 == 740)
    {
        c = instance_create_depth(-88, 385, 0,butpinke4)
        c.image_xscale = -2
        c.image_yscale = 2
        c.hspeed = 6
    }
    if (tl1 == 840)
    {
        with (butpinke2)
            c = roll
    }
    if (tl1 == 900)
        butpinke5.mx = 1
    if (tl1 == 920 && instance_exists(battle_soul))
    {
        bkpinkextra.playerxt = 18
        if (((battle_soul.x - 120) % 80) == 0)
            bkpinkextra.playerxb = 0
        if (((battle_soul.x - 120) % 80) <= 40)
            bkpinkextra.playerxb = -1
        if (((battle_soul.x - 120) % 80) > 40)
            bkpinkextra.playerxb = 1
        bkpinkextra.mp = ((round((((battle_soul.x - 120) / 80) / 0.1)) * 0.1) + 1)
    }
    if (tl1 >= 960 && tl1 < 970)
    {
        bkpinkextra.xs += 21
        bkpinkextra.ys -= 1
        bkpinkextra.ws -= 42
        bkpinkextra.hs += 1
        bkpinkextra.mc -= 6
        butpinke1.yj -= 1
        with (butpinke5)
            tgx -= ((mn - 3.5) * 6)
    }
    if (tl1 == 970 && instance_exists(battle_soul))
    {
        drp = point_direction(320, 315, battle_soul.x, battle_soul.y)
        dsp = point_distance(320, 315, battle_soul.x, battle_soul.y)
        instance_create_depth(320, 315, 0,butpinke6)
        battle_soul.image_alpha = -1
        butpinke5.visible = false
        block.visible = false
		with (battle_board){
        alpha=0
        alpha_bg=0
        alpha_frame=0}
    }
    if (tl1 >= 970 && tl1 < 997 && instance_exists(battle_soul))
    {
        drp += 10
        battle_soul.x = (320 + lengthdir_x(dsp, drp))
        battle_soul.y = (315 + lengthdir_y(dsp, drp))
        butpinke6.image_angle += 15
    }
    if (tl1 == 997)
    {
        bkpinkextra.mp = (7 - bkpinkextra.mp)
        if instance_exists(battle_soul)
            bkpinkextra.playerxt = 16
        butpinke5.mode = 1
        with (butpinke5)
            tgy = ((265 + (mn * 20)) - 20)
        with (butpinke6)
            instance_destroy()
		battle_soul.image_alpha = 1
        butpinke5.visible = true
        block.visible = true
		with (battle_board){
        alpha=1
        alpha_bg=1
        alpha_frame=1}
    }
    if (tl1 >= 997 && tl1 < 1007)
    {
        bkpinkextra.xs -= 17
        bkpinkextra.ws += 34
    }
    if (tl1 >= 1020 && (tl1 % 45) == 0 && tl1 <= 1720)
    {
        mty1 = choose(265, 365)
        ccd = choose(1, 2, 3, 4, 5)
        if (ccd != 1)
        {
            with (instance_create_depth(90, mty1, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        if (ccd != 2)
        {
            with (instance_create_depth(90, mty2, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        if (ccd != 3)
        {
            with (instance_create_depth(90, mty3, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        if (ccd != 4)
        {
            with (instance_create_depth(90, mty4, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        if (ccd != 5)
        {
            with (instance_create_depth(90, mty5, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        ccd = choose(1, 2, 3, 4, 5)
        if (ccd != 1)
        {
            with (instance_create_depth(550, mty1, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        if (ccd != 2)
        {
            with (instance_create_depth(550, mty2, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        if (ccd != 3)
        {
            with (instance_create_depth(550, mty3, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        if (ccd != 4)
        {
            with (instance_create_depth(550, mty4, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
        if (ccd != 5)
        {
            with (instance_create_depth(550, mty5, 0,butpink2_2))
            {
                extra = 1
                sprite_index = battleextrapink_2
            }
        }
    }
    if (tl1 >= 1020 && (tl1 % 102) == 0 && tl1 <= 1720)
    {
        var col = choose(1, 2)
        with (instance_create_depth(90, 365, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(90, mty2, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(90, mty3, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(90, mty4, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(90, mty5, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(90, 265, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(550, 265, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(550, 365, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(550, mty2, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(550, mty3, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(550, mty4, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
        with (instance_create_depth(550, mty5, 0,butpinke3))
        {
            extra = 3
            image_index = col
        }
    }
    if (tl1 >= 1820 && (tl1 % 20) == 0 && tl1 <= 2410)
    {
        mty1 = choose(265, 285)
        mty3 = choose(305, 325)
        mty5 = choose(345, 365)
        with (instance_create_depth(570, mty1, 0,butpink2_1))
        {
            extra = 1
            sprite_index = battleextrapink_6
            image_alpha = 0
            if (irandom(1) == 1)
                GMU_Anim_New(id, "vspeed", 0, 11, 0, 8, 30, random_range(20, 120))
        }
        with (instance_create_depth(70, mty3, 0,butpink2_1))
        {
            extra = 1
            sprite_index = battleextrapink_6
            image_alpha = 0
            if (irandom(1) == 1)
                GMU_Anim_New(id, "hspeed", 0, 11, hspeed, (hspeed * -3), 40, random_range(40, 120))
        }
        with (instance_create_depth(70, mty5, 0,butpink2_1))
        {
            extra = 1
            sprite_index = battleextrapink_6
            image_alpha = 0
            if (irandom(1) == 1)
                GMU_Anim_New(id, "vspeed", 0, 11, 0, -8, 30, random_range(20, 120))
        }
    }
    if (tl1 == 2560)
    {
        c = instance_create_depth(0, 0, 0,extraallbut2)
        c.to = butpinke1
        c.image_blend = make_color_rgb(255, 0, 255)
    }
    if (tl1 == 2600)
    {
        bkpinkextra.playerxt = 0
		battle_soul.image_blend=c_white
	    battle_soul.sprite_index=spr_battle_soul_red
        instance_destroy(butpink2_1)
        instance_destroy(butpinke2)
        instance_destroy(butpinke3)
        instance_destroy(butpinke5)
        instance_destroy()
    }
}
