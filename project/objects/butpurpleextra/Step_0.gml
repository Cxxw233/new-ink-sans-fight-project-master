if instance_exists(battle_soul)
{
    if (xt == 2)
    {
        tl1++
        if (tl1 >= 40 && tl1 < 65)
        {
            battle_ui.y += 2
            battle_button_fight.y += 2
            battle_button_act.y += 2
            battle_button_item.y += 2
            battle_button_mercy.y += 2
            bkpurpleextra.hs += 2
			Battle_SetBoardSize(65,115,283,283,25)
        }
        if ((tl1 % 100) >= 80 && (tl1 % 100) < 100 && tl1 < 400)
        {
            for (i = 0; i < 30; i++)
            {
                dx = (cos(degtorad((tl1 * 18))) * 20)
                dy = (sin(degtorad((tl1 * 18))) * 20)
                c = instance_create_depth(((100 + (440 * (tl1 % 200) <= 100)) + dx), (100 + dy), 0,butpurplee2)
                c.direction = (i * 12)
                c.image_index = ((i + tl1) % 5) == 0
                c.rspeed = (((((((tl1 % 100) - 80) % 2) * 2) - 1) * ((tl1 % 100) - 80)) / 10)
                c.speed = ((cos(degtorad((i * 72))) + 1) / 1.5)
                c.friction = -0.05
            }
        }
        if (tl1 >= 460 && (tl1 % 6) == 0 && tl1 < 820)
        {
            for (i = 0; i <= ((((tl1 - 460) / 6) * tl1 < 520) + (10 * tl1 >= 520)); i++)
            {
                c = instance_create_depth((20 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((20 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((80 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((80 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((140 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((140 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((200 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((200 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((260 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((260 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((320 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((320 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((380 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((380 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((440 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((440 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((500 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((500 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
            }
				c = instance_create_depth((560 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((560 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((620 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((620 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((680 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((680 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
				c = instance_create_depth((740 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 1)
                if (tl1 >= 550 && tl1 < 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (2 - (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4
                c = instance_create_depth((740 + (i * 60)), 0, 0,butpurplee2)
                c.image_index = (0 + (i % 2) == 0)
                if (tl1 >= 550 && tl1 <= 610)
                    c.image_index = ((!c.image_index) + 1)
                if (tl1 >= 640 && tl1 < 670)
                    c.image_index = (!c.image_index)
                if (tl1 >= 670 && tl1 < 700)
                    c.image_index = (3 - c.image_index)
                if (tl1 >= 700)
                    c.image_index = (1 + sign(sin(i)))
                c.mode = 1
                c.rspeed = (-2 + (sin(((tl1 - 460) / 20)) * 0.1))
                c.vspeed = 4

        }
        if (tl1 >= 860 && (tl1 % 2) == 0 && tl1 < 1050)
        {
            c = instance_create_depth(irandom_range(20, 620), 480, 0,butpurplee2)
            c.image_index = choose(0, 0, 0, 2)
            c.gravity = 0.1
            c.gravity_direction = 270
            c.vspeed = -7
            c.hspeed = random_range(-2, 2)
        }
        if (tl1 >= 900 && (tl1 % 30) == 0 && tl1 < 1100 && instance_exists(battle_soul))
        {
            crgb(-20, 240, 80, battle_soul.y, 10, battleextrapurple_2, bssp24, bssp25, 30, 1, 1, 0, 0, 90, 90, gb)
            crgb(320, -20, battle_soul.x, 100, 10, battleextrapurple_2, bssp24, bssp25, 30, 1, 1, 0, 0, 0, 0, gb)
        }
        if ((tl1 >= 1120 && (tl1 % 40) == 0 && tl1 <= 1320) || tl1 == 1340 || tl1 == 1360 || tl1 == 1380)
        {
            md = irandom_range(6, 10)
            ma = irandom(359)
            mc = irandom(4)
            mg = irandom(4)
            for (i = 0; i < md; i++)
            {
                if instance_exists(battle_soul)
                {
                    c = instance_create_depth((battle_soul.x + lengthdir_x(40, (ma + ((i * 360) / md)))), (battle_soul.y + lengthdir_y(40, (ma + ((i * 360) / md)))), 0,butpurplee3)
                    c.mc = ((ma + ((i * 360) / md)) + 180)
                    c.spd = 2
                    c.friction = -0.2
                    d = instance_create_depth((battle_soul.x + lengthdir_x(70, ((ma + ((i * 360) / md)) + 20))), (battle_soul.y + lengthdir_y(70, ((ma + ((i * 360) / md)) + 20))), 0,butpurplee7)
                    d.direction = ((ma + ((i * 360) / md)) + 200)
                    d.image_angle = ((ma + ((i * 360) / md)) - 70)
                    d.friction = -0.2
                    d.xx = battle_soul.x
                    d.yy = battle_soul.y
                }
                if (mc == 0)
                    c.image_index = (i % 2)
                if (mc == 1)
                    c.image_index = 2
                if (mc == 2)
                    c.image_index = (i >= 4 * 2)
                if (mc == 3)
                    c.image_index = ((1 * (i % 4) == 0) + (2 * (i % 2) == 1))
                if (mc == 4)
                    c.image_index = 1
                if (mg == 0)
                    c.aspeed = (-1 + ((i % 2) * 2))
                if (mg == 1)
                    c.aspeed = 2
                if (mg == 2)
                    c.aspeed = 0
                if (mg == 3)
                    c.aspeed = (0 + (i / 2))
                if (mg == 4)
                    c.aspeed = -2
            }
        }
        if (tl1 >= 1440 && tl1 < 1460 && instance_exists(bkpurpleextra))
        {
			Battle_SetBoardSize(105,105,100.5,110.5,20)
            bkpurpleextra.ys -= 2
            bkpurpleextra.hs += 2
            bkpurpleextra.xs += 8.625
            bkpurpleextra.ws -= 17.25
            if instance_exists(butpurplee1)
                butpurplee1.yj -= 2
        }
        if (tl1 == 1480)
        {
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = 3
                dc = 15
                image_index = 2
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = 3
                dc = 30
                image_index = 2
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = 3
                dc = 45
                image_index = 2
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = 3
                dc = 60
                image_index = 2
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = -3
                dc = -75
                image_index = 2
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = -3
                dc = -90
                image_index = 2
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = -3
                dc = -105
                image_index = 2
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = -3
                dc = -120
                image_index = 2
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = 3
                dc = -15
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = 3
                dc = -30
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = 3
                dc = -45
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = 3
                dc = -60
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = -3
                dc = 75
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = -3
                dc = 90
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = -3
                dc = 105
            }
            with (instance_create_depth(-50, -50, 0,butpurplee5))
            {
                amspeed = -3
                dc = 120
            }
        }
        if (tl1 >= 1480 && ((tl1 - 1480) % 60) == 0 && tl1 < 1840)
        {
            sta = irandom(359)
            ras = irandom_range(-3, 3)
            for (i = 0; i < 29; i++)
            {
                c = instance_create_depth(-50, -50, 0,butpurplee4)
                c.aspeed = ras
                c.dspeed = 1
                c.dacspeed = 0.05
                c.a = (sta + (i * 10))
                c.image_index = 1
            }
        }
        if (tl1 == 1870 && instance_exists(butpurplee5))
            butpurplee5.amspeed = 0
        if (tl1 == 1880 && instance_exists(butpurplee5))
            butpurplee5.c = 1
        if (tl1 == 1900)
        {
            d = random_range(0, 360)
            e = random_range(0, 360)
        }
        if (tl1 >= 1900 && (tl1 % 4) == 0 && tl1 < 2120)
        {
            c = instance_create_depth(330, 315, 0,butpurplee6)
            c.direction = ((((tl1 - 1900) * 6) * -1) + d)
            c.speed = 3
            c.friction = -0.1
            c.image_index = 1
            c = instance_create_depth(330, 315, 0,butpurplee6)
            c.direction = (((((tl1 - 1900) * 6) * -1) - 180) + d)
            c.speed = 3
            c.friction = -0.1
            c.image_index = 1
            c = instance_create_depth(330, 315, 0,butpurplee6)
            c.direction = (((((tl1 - 1900) * 6) * -1) - 90) + d)
            c.speed = 3
            c.friction = -0.1
            c.image_index = 1
            c = instance_create_depth(330, 315, 0,butpurplee6)
            c.direction = (((((tl1 - 1900) * 6) * -1) - 270) + d)
            c.speed = 3
            c.friction = -0.1
            c.image_index = 1
        }
        if (tl1 >= 1900 && (tl1 % 2) == 0 && tl1 < 2120)
        {
            c = instance_create_depth(330, 315, 0,butpurplee6)
            c.direction = (((tl1 - 1900) * 3) + e)
            c.speed = 3
            c.friction = -0.1
            c.image_index = 0
            c = instance_create_depth(330, 315, 0,butpurplee6)
            c.direction = ((((tl1 - 1900) * 3) + 180) + e)
            c.speed = 3
            c.friction = -0.1
            c.image_index = 0
            c = instance_create_depth(330, 315, 0,butpurplee6)
            c.direction = ((((tl1 - 1900) * 3) + 90) + e)
            c.speed = 3
            c.friction = -0.1
            c.image_index = 2
            c = instance_create_depth(330, 315, 0,butpurplee6)
            c.direction = ((((tl1 - 1900) * 3) + 270) + e)
            c.speed = 3
            c.friction = -0.1
            c.image_index = 2
        }
        if (tl1 == 2120)
        {
            c = instance_create_depth(0, 0, 0,extraallbut2)
            c.to = 823
            c.image_blend = make_color_rgb(128, 0, 128)
        }
        if (tl1 == 2200)
        {
            battle_ui.y -= 50
            battle_button_fight.y -= 50
            battle_button_act.y -= 50
            battle_button_item.y -= 50
            battle_button_mercy.y -= 50
            instance_destroy(butpurplee1)
			Battle_EndTurn()
        }
    }
}
