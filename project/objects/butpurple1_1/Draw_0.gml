if ((b % 15) < 9)
{
    switch ((a div 9) % 4)
    {
        case 0:
            rx += (9 - (a % 9))
            uy += (9 - (a % 9))
            break
        case 1:
            lx += (9 - (a % 9))
            uy -= (9 - (a % 9))
            break
        case 2:
            lx -= (9 - (a % 9))
            dy -= (9 - (a % 9))
            break
        case 3:
            rx -= (9 - (a % 9))
            dy += (9 - (a % 9))
            break
    }

    a++
}
b++
draw_set_color(c_purple)
repeat (2)
{
    draw_rectangle(((((i * 530) + 55) + lx) - ((2 * i) * lx)), (55 + uy), ((((i * 440) + 100) + rx) - ((2 * i) * rx)), (145 + dy), true)
    draw_rectangle(((((i * 530) + 55) + uy) - ((2 * i) * uy)), (100 - rx), ((((i * 350) + 145) + dy) - ((2 * i) * dy)), (145 - lx), true)
    draw_rectangle(((((i * 440) + 100) - rx) + ((2 * i) * rx)), (55 - dy), ((((i * 350) + 145) - lx) + ((2 * i) * lx)), (145 - uy), true)
    draw_rectangle(((((i * 530) + 55) - dy) + ((2 * i) * dy)), (55 + lx), ((((i * 350) + 145) - uy) + ((2 * i) * uy)), (100 + rx), true)
    i++
}
if (tl1 < 37)
{
    tl1++
    dr1 += (39 - tl1)
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(0, 0, (320 - dr1), 480, false)
    draw_rectangle((320 + dr1), 0, 640, 480, false)
}
tl2++
if (tl2 > 585 && tl2 < 601)
{
    draw_set_alpha(((tl2 - 585) * 0.1))
    draw_set_color(c_black)
    draw_rectangle(0, 0, 640, 480, false)
}
if (tl2 == 600)
    instance_destroy()

 