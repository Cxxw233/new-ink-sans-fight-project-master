a++
p = 1
c = 0
repeat (5)
{
    c++
    draw_sprite_ext(battlered_1_3, 0, 75, (100 + (sin(degtorad(((a - (c * 15)) * 3))) * 10)), 1, 1, ((c * 4) + (a * 2)), c_white, p)
    draw_sprite_ext(battlered_1_3, 0, 565, (100 + (sin(degtorad(((a - (c * 15)) * 3))) * 10)), 1, 1, ((0 - (c * 4)) - (a * 2)), c_white, p)
    p = ((p / 4) * 3)
}
if (tl1 < 25)
{
    tl1++
    dr1 += (26 - tl1)
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(0, 0, (320 - dr1), 480, false)
    draw_rectangle((320 + dr1), 0, 640, 480, false)
}
tl2++
if (tl2 > 540 && tl2 < 551)
{
    draw_set_alpha(((tl2 - 540) * 0.1))
    draw_set_color(c_black)
    draw_rectangle(0, 0, 640, 480, false)
}
if (tl2 == 550)
    instance_destroy()
