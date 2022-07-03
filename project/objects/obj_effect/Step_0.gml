if (mode == 0)
{
    image_alpha -= alp
    if (image_alpha <= 0)
        instance_destroy()
}
else if (mode == 1)
{
    image_alpha -= 0.02
    if (image_alpha <= 0)
        instance_destroy()
    image_angle += rotate
}
else if (mode == 2)
{
    image_alpha -= 0.05
    if (image_alpha <= 0)
        instance_destroy()
    image_xscale += 1
    image_yscale += 1
}
else if (mode == 3)
{
    image_angle += rotate
    if (y < -200)
        instance_destroy()
}
else if (mode == 4)
{
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
else if (mode == 5)
{
    image_alpha -= 0.025
    if (image_alpha <= 0)
        instance_destroy()
    image_xscale += 0.05
    image_yscale += 0.05
    x = ((battle_enemy_dt.x + battle_enemy_dt.head_x) + 12)
    y = ((battle_enemy_dt.y + battle_enemy_dt.head_y) + 3)
}
else if (mode == 6)
{
    vspeed += 0.15
    image_angle += (vspeed / 2)
    if (y > 600)
        instance_destroy()
}
else if (mode == 7)
{
    vspeed += 0.15
    image_angle -= (vspeed / 2)
    if (y > 600)
        instance_destroy()
}
else if (mode == 8)
{
    image_alpha += (1/30)
    image_xscale -= _scale
    image_yscale -= _scale
    if (image_alpha >= 1)
        instance_destroy()
}
else if (mode == 9)
{
    image_alpha -= (1 / _scale)
    if (image_alpha <= 0)
        instance_destroy()
}
else if (mode == 10)
{
    a++
    if (a == _scale)
        instance_destroy()
}
else if (mode == 11)
{
    image_speed = 0
    image_angle += rotate
    if (gravity < 0.1)
        gravity += 0.015
    if (y > 480)
        instance_destroy()
}
else if (mode == 12)
{
    sprite_index = spr_pixel
    image_xscale = (24 + (abs((320 - x)) / 40))
    image_angle = ((-(320 - x)) / 40)
    y += ((320 - x) / 640)
    if (x > 640)
        instance_destroy()
}
else if (mode == 14)
{
    if (x > 640)
        instance_destroy()
}
else if (mode == 15)
{
    image_xscale += 2
    image_yscale += 2
    image_alpha -= 0.025
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 16)
{
    if (image_alpha <= 0)
        instance_destroy()
}
else if (mode == 17)
{
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
    image_angle += rotate
}
if (x > 700 && mode == 18)
    instance_destroy()
if (mode == 19)
{
    if (image_index > 2)
        instance_destroy()
}
if (mode == 20)
{
    image_angle += 3
    image_xscale += 0.05
    image_yscale += 0.05
    image_alpha -= 0.075
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 21)
{
    image_xscale += 0.05
    image_yscale += 0.05
    image_alpha -= 0.025
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 22)
{
    vspeed = -2
    hspeed += 0.01
    image_angle--
    if (hspeed > 0.4)
    {
        image_alpha -= 0.0125
        if (image_alpha <= 0)
            instance_destroy()
    }
}
if (mode == 23)
{
    image_xscale += 0.1
    image_yscale += 0.1
    if (image_yscale > 1)
        image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 24)
{
    image_xscale -= 0.1
    image_yscale -= 0.1
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 25)
{
    image_alpha -= 0.0033333333333333335
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 26)
{
    y += 8
    image_alpha -= (1/30)
    image_angle += 3
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 27)
{
    image_alpha -= 0.025
    image_xscale += 0.5
    image_yscale += 0.5
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 28)
{
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
if (mode == 29)
{
    image_alpha -= 0.011111111111111112
    image_xscale -= 0.01
    image_yscale -= 0.01
    if (image_alpha <= 0)
        instance_destroy()
}
