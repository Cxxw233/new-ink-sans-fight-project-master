if (mode == 0)
{
    time += 1
    if (time >= time_change)
    {
        if (irandom(3) != 0)
        {
            hspeed = choose(-5, 5, 0)
            vspeed = choose(-5, 5, 0)
            time = 0
        }
        else
        {
            move_towards_point(battle_soul.x, battle_soul.y, 5)
            time = 0
        }
    }
    while ((x - 12) < (0 + 5))
        x += 1
    while ((y - 12) < (0 + 5))
        y += 1
    while ((x + 12) > 0)
        x -= 1
    while ((y + 12) > 0)
        y -= 1
}
else
{
    speed = 10
    direction = 90
}

 