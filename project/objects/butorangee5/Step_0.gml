if (mode == 0)
{
    image_alpha += 0.05
    spd += 0.08
    image_angle += spd
}
else if (mode != 9)
{
    a++
    if (a > 30)
    {
        image_angle += (spd / 5)
        spd += 0.02
    }
    if (a == 450)
        image_index = 0
}

