a++
if (mode == 0)
{
    alpha = (sin((a / 10)) * 2)
    if (image_alpha != 1)
        image_alpha += 0.02
    if (a >= 50)
    {
        if (instance_exists(battle_soul) && alpha > 0)
        {
            battle_soul.x += lengthdir_x(3, point_direction(battle_soul.x, battle_soul.y, x, y))
            battle_soul.y += lengthdir_y(3, point_direction(battle_soul.x, battle_soul.y, x, y))
        }
    }
}
if (mode == 3 && instance_exists(battle_soul))
{
    alpha = (sin((a / 20)) * 1)
    if (a >= 0)
    {
        if (alpha > 0)
            Battle_SetSoul(battle_soul_orange)
        else
            Battle_SetSoul(battle_soul_red)
    }
}
if (mode == 4)
{
    if (a >= 60 && a <= 65)
    {
        but = instance_create_depth(x, y, 0,butorangee3)
        but.mode = 6
        but.direction = choose(random_range(30, 150), random_range(-30, -150))
        but.speed = random_range(3, 8)
    }
}
if (mode == 5 && instance_exists(battle_soul))
{
    dir += 3.5
    x = (battle_soul.x + lengthdir_x(len, dir))
    y = (battle_soul.y + lengthdir_y(len, dir))
    if (len != 120 && cc == 0)
        len -= 3
    else if (cc == 1)
        len += 6
    else
    {
        b++
        aa = (sin((b / 10)) * 1)
        if (instance_exists(butorangee3) && aa > 0)
        {
            with (butorangee3)
            {
                if (bounce != 0)
                {
                    x += lengthdir_x((speed / 1.5), point_direction(x, y, battle_soul.x, battle_soul.y))
                    y += lengthdir_y((speed / 1.5), point_direction(x, y, battle_soul.x, battle_soul.y))
                }
            }
        }
    }
}
if (mode == 6 && instance_exists(battle_soul))
{
    dir += 3.5
    x = (battle_soul.x + lengthdir_x(len, (dir + 45)))
    y = (battle_soul.y + lengthdir_y(len, (dir + 45)))
    if (len != 120 && cc == 0)
        len -= 3
    else if (cc == 1)
        len += 6
    else
    {
        b++
        if ((b % 40) == 0)
        {
            var dirr = 0
            repeat (4)
            {
                but = instance_create_depth((battle_soul.x + lengthdir_x(len, ((dir + 45) + dirr))), (battle_soul.y + lengthdir_y(len, ((dir + 45) + dirr))), 0,butorangee3)
                but.mode = 6
                but.direction = choose(point_direction((battle_soul.x + lengthdir_x(len, ((dir + 45) + dirr))), (battle_soul.y + lengthdir_y(len, ((dir + 45) + dirr))), battle_soul.x, battle_soul.y))
                but.speed = random_range(3, 6)
                dirr += 90
            }
        }
    }
}
if (mode == 7 && instance_exists(battle_soul))
    Battle_SetSoul(battle_soul_orange)
if (mode == 8)
{
    if (a <= 20)
    {
        if (image_xscale != 2)
        {
            image_alpha += 0.05
            image_xscale += 0.1
            image_yscale += 0.1
        }
    }
    if (a == 60)
    {
        var dirrr = 0
        repeat (4)
        {
            but = instance_create_depth(x, y, 0,butorangee7)
            but.image_angle = dirrr
            but.mode = 4
            but.image_index = 3
            but.image_xscale = 1
            but.image_yscale = 600
            dirrr += 90
        }
    }
    if (a == 60)
        instance_destroy()
}

