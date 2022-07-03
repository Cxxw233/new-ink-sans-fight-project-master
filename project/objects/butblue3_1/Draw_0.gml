if (tl1 < 37)
{
    tl1++
    dr1 += (37 - tl1)
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(0, 0, (320 - dr1), 480, false)
    draw_rectangle((320 + dr1), 0, 640, 480, false)
}
