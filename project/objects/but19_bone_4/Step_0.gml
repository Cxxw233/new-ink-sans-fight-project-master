image_alpha += 0.03
time += 1
if (time < 40)
{
    image_angle = (point_direction(x, y, battle_soul.x, battle_soul.y) + 90)
    direction = (image_angle - 90)
}
if (time == 40)
    speed = 12
