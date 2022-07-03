image_angle = ang
image_alpha += 0.02
a += 0.5
if (atking == 0)
{
    global.frozen = 0
    if instance_exists(battle_soul)
    {
        if place_meeting(x, (y - 1), battle_soul)
        {
            if (!keyboard_check(vk_right))
                battle_soul.x-= 0.61
            else if keyboard_check(vk_right)
            {
                if (battle_soul.x != battle_soul.xprevious)
                    battle_soul.x = battle_soul.xprevious
                if (battle_soul.y != battle_soul.yprevious)
                    battle_soul.y = battle_soul.yprevious
            }
        }
    }
}
else
{
    tl1 += 0.5
    if (tl1 >= 15 && tl1 < 25)
        ang -= 1.35
}
if (!instance_exists(c))
    c = instance_create_depth(x, (y + 1), 0,block_ice)
else
    c.image_angle = image_angle
