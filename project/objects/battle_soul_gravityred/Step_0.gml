event_inherited(); 	
//移动
        if (butyellowextra.tl2 <= 0)
            speed = 4.4
        else
            speed = 0

    if (butyellowextra.tl2 <= 0)
    {
        if keyboard_check(vk_shift)
            global.speeddown = 1
        if (global.frozen == 0)
        {
            if keyboard_check(vk_left)
            {
                xj -= 5
                if (global.speeddown == 1)
                    xj += 3
            }
            if keyboard_check(vk_right)
            {
                xj += 5
                if (global.speeddown == 1)
                    xj -= 3
            }
            if keyboard_check(vk_up)
            {
                yj -= 5
                if (global.speeddown == 1)
                    yj += 3
            }
            if keyboard_check(vk_down)
            {
                yj += 5
                if (global.speeddown == 1)
                    yj -= 3
            }
            if (keyboard_check_released(vk_left) && keyboard_check_pressed(vk_right) == 0)
            {
                if keyboard_check(vk_right)
                {
                    xj += 5
                    if (global.speeddown == 1)
                        xj -= 3
                }
            }
            if (keyboard_check_released(vk_right) && keyboard_check_pressed(vk_left) == 0)
            {
                if keyboard_check(vk_left)
                {
                    xj -= 5
                    if (global.speeddown == 1)
                        xj += 3
                }
            }
            if (keyboard_check_released(vk_up) && keyboard_check_pressed(vk_down) == 0)
            {
                if keyboard_check(vk_down)
                {
                    yj += 5
                    if (global.speeddown == 1)
                        yj -= 3
                }
            }
            if (keyboard_check_released(vk_down) && keyboard_check_pressed(vk_up) == 0)
            {
                if keyboard_check(vk_up)
                {
                    yj -= 5
                    if (global.speeddown == 1)
                        yj += 3
                }
            }
        }
 

    {
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
    }
    if (butyellowextra.tl2 <= 0)
    {
        if (place_free((x + xj), y) && (x + xj) > 8 && (x + xj) < 632)
        {
            x += xj
            xllbb = 1
        }
        if ((x + xj) <= 8)
        {
            x = 8
            xllbb = 1
        }
        if ((x + xj) >= 632)
        {
            x = 632
            xllbb = 1
        }
        if (place_free((x + xj), (y - 5)) && xllbb == 0 && x > 7 && x < 631)
        {
            x += xj
            move_outside_solid(90, -1)
            xllbb = 1
        }
        if (place_free((x + xj), (y + 5)) && xllbb == 0 && x > 7 && x < 631)
        {
            x += xj
            move_outside_solid(270, -1)
            xllbb = 1
        }
        if (place_free((x + xj), y) == 0 && xllbb == 0 && x > 7 && x < 631)
        {
            if (xj < 0)
                move_contact_solid(180, 5)
            if (xj > 0)
                move_contact_solid(0, 5)
        }
        if (place_free(x, (y + yj)) && (y + yj) < 472)
        {
            y += yj
            yllbb = 1
        }
        if ((y + yj) >= 472)
        {
            y = 472
            yllbb = 1
        }
        if (place_free((x - 5), (y + yj)) && yllbb == 0)
        {
            y += yj
            move_outside_solid(180, -1)
            yllbb = 1
        }
        if (place_free((x + 5), (y + yj)) && yllbb == 0)
        {
            y += yj
            move_outside_solid(0, -1)
            yllbb = 1
        }
        if (place_free(x, (y + yj)) == 0 && yllbb == 0)
        {
            if (yj < 0)
                move_contact_solid(90, 5)
            if (yj > 0)
                move_contact_solid(270, 5)
        }
    }
    if  (butyellowextra.tl2 > 0)
    {
        if keyboard_check_pressed(vk_up)
            y -= 4
        if keyboard_check_released(vk_up)
            y += 4
        if keyboard_check_pressed(vk_down)
            y += 4
        if keyboard_check_released(vk_down)
            y -= 4
        if keyboard_check_pressed(vk_left)
            x -= 4
        if keyboard_check_released(vk_left)
            x += 4
        if keyboard_check_pressed(vk_right)
            x += 4
        if keyboard_check_released(vk_right)
            x -= 4
    }
	}
