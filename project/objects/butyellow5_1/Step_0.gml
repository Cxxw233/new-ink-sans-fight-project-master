a++
if (a <= 15)
    image_alpha = (a / 10)
if (a >= 30 && a < 45)
    spd += 0.2
if (a >= 60 && a < 75)
    aspd += 2
if (a > 120)
{
    spd = (2 + (sin(((a - 80) / 3)) * 1))
    aspd = (20 + (cos(((a - 80) / 3)) * 10))
    m = (sin(((a - 80) / 20)) * 10)
}
if (a > 150 && (a % rou) == 0 && sk == 0 && instance_exists(battle_soul))
    c = instance_create_depth(x, y, 0,butyellow5_3)
if (sk == 1)
{
    sp += 3
    if (sp == 90)
        sk = 2
}
else if (sk == 2)
{
    bb++
    if (bb == 15)
    {
        for (i = 0; i < 7; i++)
            instance_create_depth(x, y, 0,butyellow5_5).direction = (ag + (i * 72))
    }
    if (bb == 30)
    {
        bb = 0
        sk = 3
    }
}
else if (sk == 3)
{
    sp -= 2
    if (sp <= 0)
    {
        sk = 0
        sp = 0
    }
}
if (spd != 0)
{
    ag -= spd
    if (ag > 360)
        ag -= 360
    if (ag < 0)
        ag += 0
    image_angle -= aspd
    if (image_angle > 360)
        image_angle -= 360
    if (image_angle < 0)
        image_angle += 0
}
x = (320 + lengthdir_x(((120 + m) + sp), (ag + 90)))
y = (310 + lengthdir_y(((120 + m) + sp), (ag + 90)))
if (b > 0)
{
    x += irandom_range(2, 2)
    y += irandom_range(2, 2)
    b--
}
if instance_exists(playerbullet)
{
    pb = instance_nearest(x, y, playerbullet)
    if (point_distance(pb.x, pb.y, x, y) < 25)
    {
        if (b == 0 && a > 30)
        {
            hmp++
            image_alpha -= 0.37
            with (pb)
                instance_destroy()
            if (hmp == 3)
                instance_destroy()
            b = 45
        }
    }
}
c = instance_create_depth(x, y, 0,butyellow5_2)
c.aspd = aspd
c.image_angle = image_angle
