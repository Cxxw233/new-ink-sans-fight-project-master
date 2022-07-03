// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_sans_swing(){
var arg = act
if global.phase<3 or boss1xt=1{
switch arg 
{
	
    case 1:
        if (x_gravity <= 0.1)
            x_gravity += 0.01
        if (y_gravity <= 0.08)
            y_gravity += 0.01
        if (first_swing == 0)
        {
            if (time <= 20)
            {
                body_x -= (0.08 + x_gravity)
                head_x -= (0.08 + x_gravity)
                feet_x -= (0.06 + x_gravity)
                if (time > 10)
                {
                    body_y -= (0.06 + y_gravity)
                    head_y -= (0.06 + y_gravity)
                    feet_y -= (0.04 + y_gravity)
                }
                if (time == 20)
                {
                    x_gravity = 0
                    y_gravity = 0
                }
            }
            if (time > 40 && time <= 60)
            {
                body_x += ((0.08 + x_gravity) * 2)
                head_x += ((0.08 + x_gravity) * 2)
                feet_x += ((0.06 + x_gravity) * 2)
                if (time > 50)
                {
                    body_y += ((0.06 + y_gravity) * 2)
                    head_y += ((0.06 + y_gravity) * 2)
                    feet_y += ((0.04 + y_gravity) * 2)
                }
                if (time == 60)
                {
                    x_gravity = 0
                    y_gravity = 0
                }
            }
            if (time == 60)
            {
                first_swing = 1
                time = 0
            }
        }
        else
        {
            if (x_gravity <= 0.1)
                x_gravity += 0.01
            if (y_gravity <= 0.08)
                y_gravity += 0.01
            if (time <= 20)
            {
                body_x += ((0.08 + x_gravity) * 2)
                head_x += ((0.08 + x_gravity) * 2)
                feet_x += ((0.06 + x_gravity) * 2)
                if (time > 10)
                {
                    body_y -= ((0.06 + y_gravity) * 2)
                    head_y -= ((0.06 + y_gravity) * 2)
                    feet_y -= ((0.04 + y_gravity) * 2)
                }
                if (time == 20)
                {
                    x_gravity = 0
                    y_gravity = 0
                }
            }
            if (time > 40 && time <= 60)
            {
                body_x -= ((0.08 + x_gravity) * 2)
                head_x -= ((0.08 + x_gravity) * 2)
                feet_x -= ((0.06 + x_gravity) * 2)
                if (time > 50)
                {
                    body_y += ((0.06 + y_gravity) * 2)
                    head_y += ((0.06 + y_gravity) * 2)
                    feet_y += ((0.06 + y_gravity) * 2)
                }
                if (time == 60)
                {
                    x_gravity = 0
                    y_gravity = 0
                    time = 0
                }
            }
        }
        break
    case 2:
        break
    case 3:
        if (first_swing == 0)
        {
            if (time <= 20)
            {
                head_x -= 0.2
                eyes_x -= 0.2
                body_x -= 0.16
                feet_x -= 0.06
            }
            if (time > 20 && time <= 60)
            {
                head_x += 0.2
                eyes_x += 0.2
                body_x += 0.16
                feet_x += 0.06
            }
            if (time == 60)
            {
                first_swing = 1
                time = 0
            }
        }
        else
        {
            if (time <= 40)
            {
                head_x -= (0.2 * k)
                eyes_x -= (0.2 * k)
                body_x -= (0.16 * k)
                feet_x -= (0.06 * k)
                if (time >= 20)
                {
                    head_y -= (0.16 * k)
                    eyes_y -= (0.16 * k)
                    body_y -= (0.16 * k)
                    feet_y -= (0.04 * k)
                }
            }
            if (time > 40 && time <= 120)
            {
                if (time >= 80)
                {
                    head_y += (0.16 * k)
                    eyes_y += (0.16 * k)
                    body_y += (0.16 * k)
                    feet_y += (0.04 * k)
                }
                head_x += (0.2 * k)
                eyes_x += (0.2 * k)
                body_x += (0.16 * k)
                feet_x += (0.06 * k)
            }
            if (time == 120)
            {
                time = 0
                changed = (-changed)
                if (changed == 1)
                    k = 1
                else
                    k = -1
            }
        }
        break
	}
}
if global.phase=3 or global.phase=5&&boss1xt=0{
	if (time >= 180)
            time -= 180
        if (time <= 0)
            time += 180
        yshen = (sin((time / 30)) * 2)
        ytou = (sin((time / 30)) * 3)
		body_yy = (sin((time / 30)) * 2)

}
}
