spd += 0.4
x -= spd
if (x <= 470 && xt == 0)
{
    x = 470
    spd = -4
    xt = 1
}
if (xt == 1 && image_index < 9)
{
    image_index += 1
    y -= 6.3
}
if (x < 0)
    instance_destroy()

