a++
if (a == 21)
{
    as = hspeed
    speed = 0
}
if (a == 40)
{
    image_index = 1
    instance_create_depth(0, 0, 0,gb1_3)
    repeat (3)
    {
        if instance_exists(battle_soul)
        {
            with (battle_soul)
                move_contact_solid(point_direction(other.x, (other.y - 40), x, y), 5)
        }
    }
    with (butpinke2)
    {
        c = 3
        a = 0
    }
    with (butpinke3)
    {
        c = 1
        gmdd = 1
    }
    with (butpinke3)
        gmdx = 1
}
if (a == 44)
    image_index = 0
if (a == 80)
    hspeed = (-as)
