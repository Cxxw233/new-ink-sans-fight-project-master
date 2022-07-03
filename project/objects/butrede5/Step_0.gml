a++
if (image_xscale != 1.5)
{
    image_xscale += 0.05
    image_yscale += 0.05
}
if instance_exists(battle_soul)
{
    if (a > 70 && a < 130)
    {
        dir += (1 * c)
        if (x != (battle_soul.x + lengthdir_x(70, dir)))
            x += (((battle_soul.x + lengthdir_x(70, dir)) - x) / 18)
        if (y != (battle_soul.y + lengthdir_y(70, dir)))
            y += (((battle_soul.y + lengthdir_y(70, dir)) - y) / 18)
    }
    if (a >= 130)
    {
        speed += 0.15
        if (a == 130)
        {
            direction = point_direction(x, y, battle_soul.x, battle_soul.y)
            speed = -3
        }
    }
}

 
