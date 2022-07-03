event_inherited()
if (dir == 270)
    image_angle = 0
else if (dir == 90)
    image_angle = 180
else if (dir == 180)
    image_angle = -90
else if (dir == 0)
    image_angle = 90
if walk=1{
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*10)
    {
        if (dir == 180 || dir == 0)
        {
            if Input_IsHeld(0)
            {
                if (!position_meeting(x, (y - (sprite_height / 2)), block))
                    y -= 0.1
            }
            if Input_IsHeld(1)
            {
                if (!position_meeting(x, (y + (sprite_height / 2)), block))
                    y += 0.1
            }
        }
        if (dir == 90 || dir == 270)
        {
            if Input_IsHeld(2)
            {
                if (!position_meeting((x - (sprite_width / 2)), y, block))
                    x -= 0.1
            }
            if Input_IsHeld(3)
            {
                if (!position_meeting((x + (sprite_width / 2)), y, block))
                    x += 0.1
            }
        }
    }
}
}
        if (keyboard_check(vk_up) && jump == 0)
        {
            if (g > 0)
            {
                yj -= g
                g /= 1.7
            }
        }
        if (keyboard_check(vk_up) && jump == 1)
        {
            if (g > 0)
            {
                yj += g
                g /= 1.7
            }
            if (g < 0.1)
                jump = 0
        }
        if keyboard_check_released(vk_up)
            jump = 1
        if (place_free(x, (y + yj)) && (y + yj) < 472)
            y += yj
        if ((yj > 0 && place_free(x, (y + yj)) == 0) || place_free(x, (y + 1)) == 0)
        {
            jump = 0
            yj = 0
            move_contact_solid(270, 5)
            g = 4
        }
        else if (place_meeting(x, ((y + yj) + 1), block) && yj >= 0)
        {
            move_contact_all(270, -1)
            jump = 0
            yj = 0
            g = 4
        }
        else if ((y + yj) > 472)
        {
            y = 472
            jump = 0
            yj = 0
            g = 4
        }
        else if (place_free(x, (y + 1)) && place_meeting(x, (y + yj), block) == 0)
        {
            if (jump == 1)
                yj += 0.5
            yj += 0.5
        }
        if (place_free(x, y) == 0)
        {
            if place_free(x, (y - 5))
            {
                if (y > sby)
                    move_outside_solid(90, -1)
                if (y < sby)
                    move_outside_solid(270, -1)
            }
        }
        image_angle = point_direction(0, yl6, 5, y)
    yl6 = y
 