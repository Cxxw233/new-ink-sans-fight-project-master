a++
if (a <= 20)
    image_alpha += 0.05
if (a > 20 && (a % 3) == 0 && a <= 35)
    mc++
if (a == 40)
{
    if (md == 0)
    {
        c = instance_create_depth(x, y, 0,gb1_2)
		c.sprite_index = bssp25
        c.image_blend = c_white
    }
    if (md == 1)
    {
        c = instance_create_depth(x, y, 0,gb2_2)
		c.sprite_index = bssp25
        c.image_blend = c_aqua
    }
    if (md == 2)
    {
        c = instance_create_depth(x, y, 0,gb3_2)
		c.sprite_index = bssp25
        c.image_blend = make_color_rgb(255, 128, 0)
    }
    c.image_angle = image_angle
    c.image_yscale = 100
    c.image_xscale = 4.625
    instance_create_depth(x, y, 0,gb1_3)
    audio_play_sound(mus_sfx_rainbowbeam, 1, false)
}
if (a > 40 && a <= (40 + adt))
{
    c.image_angle = image_angle
    c.x = x
    c.y = y
}
if (a >= (40 + adt) && a < (50 + adt))
    c.image_xscale -= 0.4625
if (a == (50 + adt))
{
    with (c)
        instance_destroy()
}
if (a >= (50 + adt))
{
    image_alpha -= 0.05
    if (image_alpha == 0)
        instance_destroy()
}
