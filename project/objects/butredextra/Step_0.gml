if instance_exists(battle_soul)
{
    if (xt == 2)
    {
        tl1++
        if (tl1 == 20)
        {
            with (instance_create_depth(640, 0, 0,butrede2))
            {
                speed = 24
                direction = 270
                alarm[0] = 1
                kind = 1
                des = 0
            }
            with (instance_create_depth(0, 0, 0,butrede2))
            {
                speed = 24
                direction = 270
                alarm[0] = 1
                kind = 1
                des = 0
            }
        }
        if (tl1 >= 20 && tl1 < 30)
        {
            if (index < 10)
            {
                index++
				Battle_SetBoardSize(65+ (index * 2),80- (index * 2),283- (index * 20),283- (index * 20),10)
                bkredextra.xs = (35 + (index * 20))
                bkredextra.ys = (250 - (index * 2))
                bkredextra.ws = (575 - (index * 40))
                bkredextra.hs = (140 + (index * 2))
            }
        }
        if (tl1 == 95)
        {
            with (butrede2)
            {
                zou1 = 0
                xzz = 1
                len = point_distance((bkredextra.xs + (bkredextra.ws / 2)), (bkredextra.ys + (bkredextra.hs / 2)), x, y)
                dir = point_direction((bkredextra.xs + (bkredextra.ws / 2)), (bkredextra.ys + (bkredextra.hs / 2)), x, y)
            }
        }
        if (tl1 == 150)
        {
            with (butrede2)
            {
                if (x > 640)
                    instance_destroy()
                xzz = 0
                direction = point_direction(x, y, battle_soul.x, battle_soul.y)
                speed = 8
            }
        }
        if (tl1 == 220)
        {
            with (instance_create_depth((room_width / 2), (room_height / 2), 0,butrede2))
            {
                alarm[0] = 1
                kind = 2
            }
        }
        if (tl1 == 320)
        {
            with (instance_create_depth((room_width / 2), ((room_height / 2) - 80), 0,butrede2))
            {
                alarm[0] = 1
                kind = 3
            }
        }
        if (tl1 == 366)
        {
            with (butrede2)
            {
                if (kind == 3)
                    instance_destroy()
            }
        }
        if (tl1 == 226)
        {
            with (butrede2)
            {
                if (kind == 2)
                    instance_destroy()
            }
        }
        if (tl1 == 265)
        {
            var i = 0
            repeat (20)
            {
                i++
                mk = instance_create_depth(100, 304, 0,butrede2)
                mk.direction = (i * 18)
                mk.lr = 1
                mk.xt = 1
                mk.des = 0
                mk.image_xscale = 4
                mk.image_yscale = 4
                mk = instance_create_depth(540, 304, 0,butrede2)
                mk.direction = (i * 18)
                mk.lr = -1
                mk.xt = 1
                mk.des = 0
                mk.image_xscale = 4
                mk.image_yscale = 4
            }
        }
        if (tl1 == 315)
        {
            with (butrede2)
            {
                if (xt == 1)
                {
                    mk = instance_create_depth((320 + (lr * 320)), 200, 0,butrede2)
                    xc = ((mk.x + x) / 2)
                    yc = ((mk.y + y) / 2)
                    dir = point_direction(xc, yc, x, y)
                    len = point_distance(xc, yc, x, y)
                    mk.xc = xc
                    mk.yc = yc
                    mk.dir = (dir + 180)
                    mk.xt = 5
                    roun = 1
                    mk.len = len
                    mk.des = 0
                }
            }
        }
        if (tl1 == 430)
        {
            with (butrede2)
            {
                if (xt == 5)
                {
                    shoot = 1
                    spdj = 1
                    speed = (point_distance(x, y, (bkredextra.xs + (bkredextra.ws / 2)), (bkredextra.ys + (bkredextra.hs / 2))) / 10)
                    direction = point_direction(x, y, (bkredextra.xs + (bkredextra.ws / 2)), (bkredextra.ys + (bkredextra.hs / 2)))
                }
            }
        }
        if (tl1 == 485)
        {
            with (butrede2)
            {
                if (xt == 5)
                {
                    spdj = 0
                    speed = -(random_range(2, 6))
                    direction = point_direction(x, y, battle_soul.x, battle_soul.y)
                    des = 0
                    fdo = 1
                    fddo = random_range(10, 100)
                }
            }
        }
        if (tl1 == 540)
        {
            with (butrede2)
            {
                if (xt == 1)
                {
                    roun = 0
                    des = 0
                }
                if (lr == -1)
                {
                    speed = (point_distance(x, y, room_width, y) / 45)
                    direction = point_direction(x, y, room_width, y)
                }
                if (lr == 1)
                {
                    speed = (point_distance(x, y, 0, y) / 45)
                    direction = point_direction(x, y, 0, y)
                }
            }
        }
        if (tl1 == 640)
        {
            with (butrede2)
            {
                if (xt == 1 && lr == 1)
                {
                    mk = instance_create_depth(x, y, 0,butrede2)
                    mk.xt = 6
                    instance_destroy()
                }
                if (xt == 1 && lr == -1)
                {
                    mk = instance_create_depth(x, y, 0,butrede2)
                    mk.xt = 6
                    instance_destroy()
                }
            }
        }
        if (tl1 == 666)
        {
            mk = instance_create_depth(40, -20, 0,butrede2)
            mk.des = 0
            mk.image_alpha = 0
            mk.xt = 9
            mk = instance_create_depth(600, -20, 0,butrede2)
            mk.image_alpha = 0
            mk.des = 0
            mk.xt = 9
        }
        if (tl1 == 810)
        {   Battle_SetBoardSize(65+ (index * 2), 80- (index * 2),383- (index * 20),383- (index * 20),1)
            bkredextra.xs -= 100
            bkredextra.ws += 200
            screenFlash(120)
            with (butrede2)
                instance_destroy()
            instance_create_depth(x, y, 0,butrede3)
        }
        if (tl1 > 860 && (tl1 % 80) == 0 && tl1 < 1280)
            instance_create_depth(random_range(-180, 180), y, 0,butrede6)
        if (tl1 > 860 && (tl1 % 90) == 0 && tl1 < 1280)
        {
            var delay = 0
            var col = choose(1, 2)
            var cl = 0
            repeat (21)
            {
                f = instance_create_depth((battle_soul.x + lengthdir_x(120, dir)), (battle_soul.y + lengthdir_y(120, dir)), 0,butrede7)
                f.dir = dir
                dir += 18
                f.image_index = col
                f.delay = delay
                delay += 2
                if ((cl % 5) == 0)
                    col = choose(1, 2)
                cl += 1
            }
        }
        if (tl1 = 1380)
        {
			Battle_SetBoardSize(65+ (index * 2),80- (index * 2),283- (index * 20),283- (index * 20),40)
            GMU_Anim_New(bkredextra, "xs", 0, 11, bkredextra.xs, 100, 40)
            GMU_Anim_New(bkredextra, "ws", 0, 11, bkredextra.ws, -200, 40)
        }
        if (tl1 == 1420)
        {
            mk = instance_create_depth(322, 310, 0,butrede9)
            mk.image_xscale = 0
            mk.image_yscale = 0
            mk = instance_create_depth(257, 250, 0,butrede9)
            mk.image_xscale = 0
            mk.image_yscale = 0
            mk.b = 6
            mk = instance_create_depth(257, 369, 0,butrede9)
            mk.image_xscale = 0
            mk.image_yscale = 0
            mk.b = 6
            mk = instance_create_depth(388, 369, 0,butrede9)
            mk.image_xscale = 0
            mk.image_yscale = 0
            mk.b = 6
            mk = instance_create_depth(388, 250, 0,butrede9)
            mk.image_xscale = 0
            mk.image_yscale = 0
            mk.b = 6
        }
        if (tl1 >= 1420 && (tl1 % 90) == 0 && tl1 < 2160)
        {
            d = instance_create_depth(choose(random_range(20, 180), random_range(620, 460)), random_range(40, 420),0,butrede9)
            d.b = 3
            d.image_xscale = 0
            d.image_yscale = 0
        }
        if (tl1 == 2160)
        {
            c = instance_create_depth(0, 0, 0,extraallbut2)
            c.to = butrede1
            c.image_blend = c_red
        }
        if (tl1 == 2250)
        {
		    with (butrede1)
                instance_destroy()
            with (butrede3)
                instance_destroy()
            with (butrede9)
                instance_destroy()
            instance_destroy()
        }
    }
}