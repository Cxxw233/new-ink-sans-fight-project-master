draw_sprite_ext(battlepurple_2_6, 0, 0, 0, 2, 2, 0, c_white, 1)
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
if (tl2 > 1110 && tl2 < 1126)
{
    draw_set_alpha(((tl2 - 540) * 0.1))
    draw_set_color(c_black)
    draw_rectangle(0, 0, 640, 480, false)
}
if (tl2 == 1126)
    instance_destroy()


 


