time++
image_alpha += (alpha_speed * k)
image_index = ac
if (time >= time_change)
{
    k = (-k)
    time = 0
}
if (mode == 0)
{
    if (!(place_meeting(x, y, battle_soul)))
    {
        ac = 0
        fire = 0
    }
    else
        ac = 1
    if (ac == 1)
    {
        if (butyellowextra.tl2 <= 0)
            butyellowextra.tl2 = 1
        if (instance_exists(battle_soul) && fire == 0)
        {
            crgb(-30, -30, 110, 110, 15, bssp23,bssp24,bssp25, 20, 1, 1, 0, 0, (point_direction(110, 110, battle_soul.x, battle_soul.y) + 90), -180, gb)
            crgb((room_width + 30), -30, (room_width - 110), 110, 15, bssp23,bssp24,bssp25, 20, 1, 1, 0, 0, (point_direction((room_width - 110), 110, battle_soul.x, battle_soul.y) + 90), -180, gb)
            fire = 1
        }
    }
}

