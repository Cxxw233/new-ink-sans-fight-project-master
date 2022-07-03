a++
if ((a % 2) == 0)
    image_angle += 90
if (a == delay)
    image_alpha = 1
if (b == 0 && instance_exists(battle_soul))
{
    x = (battle_soul.x + lengthdir_x(120, dir))
    y = (battle_soul.y + lengthdir_y(120, dir))
}
if (a == 90 && instance_exists(battle_soul))
{
    b = 1
    direction = point_direction(x, y, battle_soul.x, battle_soul.y)
    alarm[0] = 15
}

