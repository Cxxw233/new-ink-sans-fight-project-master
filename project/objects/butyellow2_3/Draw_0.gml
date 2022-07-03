draw_sprite_ext(battleyellow_2_2, 0, 0, 0, 2, 2, 0, c_white, 1)
if (tl1 < 37)
{
    tl1++
    dr1 += (38 - tl1)
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(0, 0, (320 - dr1), 480, false)
    draw_rectangle((320 + dr1), 0, 640, 480, false)
}
tl2++
if (tl2 > 810 && tl2 < 826)
{
    draw_set_alpha(((tl2 - 540) * 0.1))
    draw_set_color(c_black)
    draw_rectangle(0, 0, 640, 480, false)
}
if (tl2 == 825)
    instance_destroy()
