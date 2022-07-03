a++
if (mode == 0)
{
    if ((a % 40) == 0)
    {
        if (sprite_index == battleextraorange_13)
            sprite_index = battleextraorange_12
        else if (sprite_index == battleextraorange_12)
            sprite_index = battleextraorange_13
        else
            sprite_index = battleextraorange_13
    }
    but = instance_create_depth((x + 26), y, 0,butorangee7)
    but.image_angle = 90
    but.image_yscale = 26.7
    but.image_xscale = 0.5
    but.mode = 0
    mode = -2
    but.image_index = 1
}
if (mode == 1)
{
}
if (mode == 2)
{
    if place_meeting(x, y, butorangee7)
        sprite_index = battleextraorange_13
    else
    {
        sprite_index = battleextraorange_2
        image_index = 2
    }
    if (x < 320)
    {
        if (x != 80)
            x += ((80 - x) / 15)
    }
    else if (x != 560)
        x += ((560 - x) / 15)
    if (a == 640)
    {
        mode = 4
        sprite_index = battleextraorange_2
        image_index = 2
    }
}
if (mode == -2)
{
    image_speed = 0
    if ((a % 40) == 0)
    {
        if (sprite_index == battleextraorange_13)
            sprite_index = battleextraorange_12
        else
            sprite_index = battleextraorange_13
    }
}
if (mode == 10)
    sprite_index = battleextraorange_12

 
