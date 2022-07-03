draw_set_color(image_blend)
draw_set_alpha(image_alpha)
if (a >= 120)
    draw_rectangle(0, ((a - 120) * 20), 640, 480, false)
else if (a >= 60)
{
    draw_rectangle(0, 0, 640, 480, false)
    draw_set_alpha((((120 - a) / 10) * 80))
    draw_sprite(bsspxt3save, 0, 0, 480)
}
else
    draw_rectangle(0, 0, 640, 480, false)
draw_set_alpha(1)
