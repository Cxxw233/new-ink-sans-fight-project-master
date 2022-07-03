event_inherited(); 	
//移动
    if (tr > 0)
        tr--
        if ((x >= bkyellowextra.xs && x <= (bkyellowextra.xs + 14)) || (x <= (bkyellowextra.xs + bkyellowextra.ws) && x >= ((bkyellowextra.xs + bkyellowextra.ws) - 14)))
        {
            point = 1
            sidex = 1
        }
        if ((y >= (bkyellowextra.ys + 12) && y <= (bkyellowextra.ys + 14)) || (y <= (bkyellowextra.ys + bkyellowextra.hs) && y >= ((bkyellowextra.ys + bkyellowextra.hs) - 14)))
        {
            point = 2
            sidey = 1
        }
        if (sidex == 1 && sidey == 1)
            point = 3
        if (x <= (butyellowe7.x + 3) && x >= (butyellowe7.x - 3) && y <= (butyellowe7.y + 3) && y >= (butyellowe7.y - 3))
            point = 4
        if ((((x >= (butyellowe7.x + 3) || x <= (butyellowe7.x - 3)) && y == butyellowe7.y) || ((y >= (butyellowe7.y + 3) || y <= (butyellowe7.y - 3)) && x == butyellowe7.x)) && point == 4)
        {
            x = butyellowe7.x
            y = butyellowe7.y
        }
        switch point
        {
            case 1:
                speed = 0
                break
            case 2:
                speed = 0
                break
            case 3:
                speed = 0
                if ((x > (bkyellowextra.xs + 14) && y > (bkyellowextra.ys + 14) && x < (bkyellowextra.xs + 26) && y < (bkyellowextra.ys + 26)) || (x < ((bkyellowextra.xs + bkyellowextra.ws) - 14) && y > (bkyellowextra.ys + 14) && x > ((bkyellowextra.xs + bkyellowextra.ws) - 26) && y < (bkyellowextra.ys + 26)) || (x > (bkyellowextra.xs + 14) && y < ((bkyellowextra.ys + bkyellowextra.hs) - 14) && x < (bkyellowextra.xs + 26) && y > ((bkyellowextra.ys + bkyellowextra.hs) - 26)) || (x < ((bkyellowextra.xs + bkyellowextra.ws) - 14) && y < ((bkyellowextra.ys + bkyellowextra.hs) - 14) && x > ((bkyellowextra.xs + bkyellowextra.ws) - 26) && y > ((bkyellowextra.ys + bkyellowextra.hs) - 26)))
                {
                    direction = point_direction(x, y, butyellowe7.x, butyellowe7.y)
                    speed = 8
                    point = 5
                    mid = 1
                }
                break
            case 4:
                if (mid == 1)
                {
                    x = butyellowe7.x
                    y = butyellowe7.y
                    speed = 0
                    mid = 0
                }
                if (x < (butyellowe7.x - 3) && y < (butyellowe7.y - 3))
                {
                    direction = point_direction(x, y, (bkyellowextra.xs + 13), (bkyellowextra.ys + 13))
                    speed = 8
                    point = 5
                }
                if (x > (butyellowe7.x + 3) && y < (butyellowe7.y - 3))
                {
                    direction = point_direction(x, y, ((bkyellowextra.xs + bkyellowextra.ws) - 13), (bkyellowextra.ys + 13))
                    speed = 8
                    point = 5
                }
                if (x < (butyellowe7.x - 3) && y > (butyellowe7.y + 3))
                {
                    direction = point_direction(x, y, (bkyellowextra.xs + 13), ((bkyellowextra.ys + bkyellowextra.hs) - 13))
                    speed = 8
                    point = 5
                }
                if (x > (butyellowe7.x + 3) && y > (butyellowe7.y + 3))
                {
                    direction = point_direction(x, y, ((bkyellowextra.xs + bkyellowextra.ws) - 13), ((bkyellowextra.ys + bkyellowextra.hs) - 13))
                    speed = 8
                    point = 5
                }
                break
            default:
                break
	}
        if (point != 2 && point != 5 && point != 3)
        {
            if keyboard_check(vk_down)
            {
                y += 5
                yj = 1
            }
            if keyboard_check(vk_up)
            {
                y -= 5
                yj = 1
            }
        }
        if (point != 1 && point != 5 && point != 3)
        {
            if keyboard_check(vk_right)
            {
                x += 5
                xj = 1
            }
            if keyboard_check(vk_left)
            {
                x -= 5
                xj = 1
            }
        }
        if (point == 3 && tr == 0)
        {
            if keyboard_check(vk_down)
                y += 5
            if keyboard_check(vk_up)
                y -= 5
            if keyboard_check(vk_right)
                x += 5
            if keyboard_check(vk_left)
                x -= 5
            tr += 5
        }
        if ((!instance_exists(butaqua4_1)) && anti == 0)
        {
            if (a > 0)
            {
                image_blend = make_color_rgb(128, 0, 0)
                a--
            }
            if (a == 0)
                image_blend = make_color_rgb(255, 0, 0)
        }
        else
        {
            if (a > 0)
            {
                image_blend = make_color_rgb(0, 128, 128)
                a--
            }
            if (a == 0)
                image_blend = make_color_rgb(0, 255, 255)
        }
