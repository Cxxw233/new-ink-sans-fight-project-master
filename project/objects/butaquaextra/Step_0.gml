if (xt == 2)
{
    tl1++
    if (tl1 == 40)
    {
        m = instance_create_depth(0, 0, 0,butaquae2)
        m.image_alpha = 1
        butaquae1.xt = 1
    }
    if (tl1 > 40 && tl1 < 60)
        m.image_alpha -= 0.05
    if (tl1 == 60)
    {
        with (m)
            instance_destroy()
    }
    if (tl1 == 60 && instance_exists(battle_soul))
    {
        c = instance_create_depth(320, 80, 0,butaquae4)
        c.image_angle = (point_direction(320, 80, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 >= 60 && (tl1 % 60) == 0 && tl1 < 550)
    {
        amd = irandom_range(-30, 80)
        with (instance_create_depth((-70 + amd), -70, 0,butaquae6))
        {
            direction = -45
            speed = 16
            friction = 0.4
        }
        with (instance_create_depth((710 - amd), -70, 0,butaquae6))
        {
            direction = 225
            speed = 16
            friction = 0.4
        }
    }
    if (tl1 >= 100 && ((tl1 - 100) % 40) == 0 && tl1 < 300 && instance_exists(battle_soul))
    {
        c = instance_create_depth(irandom_range(80, 200), irandom_range(80, 200), 0,butaquae4)
        c.image_angle = (point_direction(c.x, c.y, battle_soul.x, battle_soul.y) + 90)
        c = instance_create_depth(irandom_range(440, 560), irandom_range(80, 200), 0,butaquae4)
        c.image_angle = (point_direction(c.x, c.y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 300)
    {
        instance_create_depth(160, 150, 0,butaquae3)
        instance_create_depth(480, 150, 0,butaquae3)
    }
    if (tl1 >= 570 && tl1 < 590)
    {
		Battle_SetBoardSize(65,65,243,243,20)
        bkaquaextra.xs += 2
        bkaquaextra.ws -= 4
    }
    if (tl1 == 590)
    {
        c = instance_create_depth(40, 355, 0,butaquae4)
        c.image_angle = 90
        c.adt = 120
    }
    if (tl1 == 600)
    {
        instance_create_depth(50, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 620)
    {
        instance_create_depth(455, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 630)
    {
        instance_create_depth(590, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 635)
    {
        instance_create_depth(185, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 640)
    {
        instance_create_depth(320, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 660)
        butaquae8.speed = 12
    if (tl1 == 670)
    {
        instance_create_depth(455, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 675)
    {
        instance_create_depth(50, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 680)
    {
        instance_create_depth(320, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 685)
    {
        instance_create_depth(590, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 690)
    {
        instance_create_depth(185, 50, 0,butaquae8).md = 1
        image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    }
    if (tl1 == 700)
        butaquae8.speed = 12
    if (tl1 == 710)
        instance_create_depth(50, 50, 0,butaquae8).md = 1
    if (tl1 == 712)
        instance_create_depth(590, 50, 0,butaquae8).md = 1
    if (tl1 == 714)
        instance_create_depth(455, 50, 0,butaquae8).md = 1
    if (tl1 == 716)
        instance_create_depth(320, 50, 0,butaquae8).md = 1
    if (tl1 == 718)
        instance_create_depth(185, 50, 0,butaquae8).md = 1
    if (tl1 == 720)
    {
        butaquae8.speed = 12
    }
    if (tl1 == 730)
        instance_create_depth(590, 50, 0,butaquae8).md = 1
    if (tl1 == 732)
        instance_create_depth(320, 50, 0,butaquae8).md = 1
    if (tl1 == 734)
        instance_create_depth(185, 50, 0,butaquae8).md = 1
    if (tl1 == 736)
        instance_create_depth(50, 50, 0,butaquae8).md = 1
    if (tl1 == 738)
        instance_create_depth(455, 50, 0,butaquae8).md = 1
    if (tl1 == 740)
    {
        butaquae8.speed = 12
    }
    if (tl1 == 750)
        instance_create_depth(185, 50, 0,butaquae8).md = 1
    if (tl1 == 751)
        instance_create_depth(455, 50, 0,butaquae8).md = 1
    if (tl1 == 752)
        instance_create_depth(590, 50, 0,butaquae8).md = 1
    if (tl1 == 753)
        instance_create_depth(50, 50, 0,butaquae8).md = 1
    if (tl1 == 754)
        instance_create_depth(320, 50, 0,butaquae8).md = 1
    if (tl1 == 756)
    {
        butaquae8.speed = 12
    }
    if (tl1 == 800)
    {
        ac = instance_create_depth(160, 100, 0,butaquae4)
        ac.adt = 240
        ac.md = 1
        bc = instance_create_depth(480, 100, 0,butaquae4)
        bc.adt = 240
        bc.md = 2
    }
    if (tl1 >= 800 && ((tl1 - 800) % 120) == 0 && tl1 < 1200)
        instance_create_depth(50, 285, 0,butaquae4).image_angle = 90
    if (tl1 >= 800 && ((tl1 - 800) % 120) == 60 && tl1 < 1200)
        instance_create_depth(50, 355, 0,butaquae4).image_angle = 90
    if (tl1 >= 800 && tl1 <= 820)
    {
		Battle_SetBoardSize(65,65,159,159,21)
        bkaquaextra.xs += 4
        bkaquaextra.ws -= 8
    }
    if (tl1 >= 840 && tl1 <= 1200)
    {
        if instance_exists(ac)
            ac.x = (320 - (cos(degtorad((((tl1 - 840) / 60) * 180))) * 160))
        if instance_exists(bc)
            bc.x = (320 + (cos(degtorad((((tl1 - 840) / 60) * 180))) * 160))
    }
    if (tl1 == 1220 && instance_exists(battle_soul))
    {
        instance_create_depth(320, 385, 0,butaquae9)
    }
    if (tl1 >= 1240 && (tl1 % 10) == 1 && tl1 < 1280)
    {
        instance_create_depth((150 + ((tl1 - 1240) * 8)), 385, 0,butaquae9)
        instance_create_depth((490 - ((tl1 - 1240) * 8)), 385, 0,butaquae9)
    }
    if (tl1 >= 1300 && (tl1 % 10) == 1 && tl1 < 1340)
    {
        instance_create_depth((150 + ((tl1 - 1300) * 8)), 385, 0,butaquae9)
        instance_create_depth((490 - ((tl1 - 1300) * 8)), 385, 0,butaquae9)
    }
    if (tl1 >= 1360 && (tl1 % 10) == 1 && tl1 < 1400)
    {
        instance_create_depth((150 + ((tl1 - 1360) * 8)), 385, 0,butaquae9)
        instance_create_depth((490 - ((tl1 - 1360) * 8)), 385, 0,butaquae9)
    }
    if (tl1 == 1400 && instance_exists(battle_soul))
    {
        c = instance_create_depth(-50, 310, 0,butaquae10)
        c.hspeed = 15
        c.friction = 0.375
        c = instance_create_depth(690, 310, 0,butaquae10)
        c.hspeed = -15
        c.friction = 0.375
        c = instance_create_depth(battle_soul.x, battle_soul.y, 0,butaqua4_1)
        c.mx = battle_soul.x
        c.my = battle_soul.y
		battle_soul_red.sprite_index=spr_battle_soul_aqua
    }
    if (tl1 == 1440)
        butaquae10.mc = 1
    if (tl1 == 2040)
    {
        c = instance_create_depth(0, 0, 0,extraallbut2)
        c.to = 732
        c.image_blend = c_aqua
        butaquae11.dmg = 0
    }
    if (tl1 == 2120)
    {
		battle_soul_red.sprite_index=spr_battle_soul_red
		Battle_EndTurn()
        with (butaquae11)
            instance_destroy()
        with (butaqua4_1)
            instance_destroy()
        instance_destroy(butaquae1)
    }
}
