a++
if (a < 30)
    x += (6 - (a / 7.5))
if (a == 30)
{
    amp = (choose(-1, 1) * random_range(1.2, 3))
    p = random_range(0.5, 3)
    str = (((("y=" + string(amp)) + "sin(") + string((p * 2))) + "  *x)")
}
if (a >= 160 && a < 165)
    image_index++
if (a == 189)
{
    instance_create_depth(0, 0, 0,gb1_3)
    xc = ((p / 192) * 100)
    yc = ((amp / 112) * 100)
    with (instance_create_depth((x - (xc * 14)), y, 0,butpurple2_6))
    {
        image_xscale = other.xc
        image_yscale = other.yc
        sprite_index = battlepurple_2_5
    }
    for (i = 0; i <= 16; i++)
    {
        with (instance_create_depth((x + ((i * xc) * 192)), y, 0,butpurple2_6))
        {
            image_xscale = other.xc
            image_yscale = other.yc
            sprite_index = battlepurple_2_4
        }
    }
}
if (a >= 210 && a < 220)
{
    with (butpurple2_6)
        image_alpha -= 0.1
}
if (a == 225)
{
    with (butpurple2_6)
        instance_destroy()
}
if (a >= 225 && a < 230)
    image_index--
if (a == 268 && c < 3)
{
    a = 29
    c++
}
if (a > 270 && c == 3)
    x -= 2
if (a == 300){
	draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    instance_destroy()
}
 