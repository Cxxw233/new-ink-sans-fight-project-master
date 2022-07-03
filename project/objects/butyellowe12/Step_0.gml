a++
dir = direction
if (a < 160 && de == 0 && instance_exists(battle_soul))
    direction = point_direction(x, y, battle_soul.x, battle_soul.y)
else
    direction = dir
if (de == 1)
{
    direction = random_range(35, 110)
    speed = 3
}
