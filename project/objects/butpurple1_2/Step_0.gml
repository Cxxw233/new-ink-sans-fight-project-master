tl1++
if instance_exists(battle_soul)
{
    if place_meeting(x, y, battle_soul)
    {
        if (a == 0)
        {
            a = 1
            xj = (battle_soul.x - xs)
            yj = (battle_soul.y - ys)
            battle_soul.xj = xj
            battle_soul.yj = yj
            global.frozen = 1
        }
        if (b == 0 && xj == 0 && yj == 0)
        {
            a = 1
            xj = 0
            yj = 5
            battle_soul.xj = xj
            battle_soul.yj = yj
            global.frozen = 1
        }
        if (a == 1)
        {
            battle_soul.xj = xj
            battle_soul.yj = yj
        }
        b = 1
    }
    else if (a == 1)
    {
        a = 0
        battle_soul.xj = 0
        battle_soul.yj = 0
        xj = 0
        yj = 0
        if (xtt == 0)
        {
            xtt = 1
            image_speed = 1
        }
        global.frozen = 0
    }
    if (tl1 == 120 && xtt == 0)
    {
        xtt = 1
        image_speed = 1
    }
    if (de == 1)
        image_alpha -= 0.1
    else
        image_alpha += (image_alpha < 1 * 0.1)
    if (image_alpha == 0)
        instance_destroy()
    xs = battle_soul.x
    ys = battle_soul.y
}

 