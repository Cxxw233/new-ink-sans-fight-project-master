if place_meeting(x, y, battle_soul)
{
    with (battle_soul)
    {
        if (place_meeting(x, y, block) && x < 18)
            move_outside_solid(90, -1)
        if (place_meeting(x, y, block) && x > 623)
            move_outside_solid(90, -1)
        move_outside_solid((other.hspeed < 0 * 180), -1)
    }
}

