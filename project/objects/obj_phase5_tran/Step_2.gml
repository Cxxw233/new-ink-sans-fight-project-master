if instance_exists(battle_soul)
{
    if (place_meeting(x, (y - 1), battle_soul) && abs((x - ox)) > 0)
        battle_soul.x += (x - ox)
    if (place_meeting(x, (y + 1), battle_soul) || place_meeting(x, y, battle_soul))
        battle_soul.y -= 3
}
