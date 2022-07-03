image_speed = 0
image_angle = dir
image_index = index
long -= sped
if instance_exists(battle_soul)
{
    x = (battle_soul.x + lengthdir_x(long, dir))
    y = (battle_soul.y + lengthdir_y(long, dir))
    if point_in_rectangle(x, y, (battle_soul.x - 120), (battle_soul.y - 120), (battle_soul.x + 120), (battle_soul.y + 120))
    {
        switch index
        {
            case 0:
                index = 3
            case 2:
                index = 1
            case 4:
                index = 7
            case 6:
                index = 5
        }

    }
}
