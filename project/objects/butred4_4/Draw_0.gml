a++
draw_sprite_ext(battlered_4_4, 0, (100 + (a % 10)), 200, 1, 1, 0, c_white, (1 - ((a % 10) * 0.1)))
draw_sprite_ext(battlered_4_4, 1, (540 - (a % 10)), 200, 1, 1, 0, c_white, (1 - ((a % 10) * 0.1)))
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
if (tl2 > 885 && tl2 < 901)
{
    draw_set_alpha(((tl2 - 660) * 0.1))
    draw_set_color(c_black)
    draw_rectangle(0, 0, 640, 480, false)
}
if (tl2 == 901)
    instance_destroy()
