if (image_alpha < 1)
    image_alpha += 0.1
repeat (3 + ceil(hspeed))
{
    if (place_meeting(x, y, battle_soul) && cm == 0)
    {
        with (battle_soul)
            move_contact_solid(other.image_angle, 1)
    }
}

