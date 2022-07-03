if instance_exists(battle_soul)
{
    battle_soul.x += lengthdir_x(1, point_direction(battle_soul.x, battle_soul.y, x, y))
    battle_soul.y += lengthdir_y(1, point_direction(battle_soul.x, battle_soul.y, x, y))
}
if (de == 1)
    image_alpha -= 0.1
if (image_alpha == 0)
    instance_destroy()

