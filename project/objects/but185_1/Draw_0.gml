b++
if (frac((b / 4)) == 0)
{
    a++
    if (a == 1)
    {
        ytou1--
        xtou1--
    }
    if (a == 2)
    {
        ytou1--
        xtou1--
        yshen1--
        xshen1--
    }
    if (a == 3)
        ytou1--
    if (a == 4)
    {
        ytou1 += 2
        yshen1++
    }
    if (a == 5)
    {
        ytou1 += 2
        yshen1++
    }
    if (a == 6)
    {
        xtou1++
        xshen1++
    }
    if (a == 7)
    {
        ytou1--
        xtou1++
    }
    if (a == 8)
    {
        ytou1--
        xtou1++
        yshen1--
        xshen1++
    }
    if (a == 9)
        ytou1--
    if (a == 10)
        ytou1++
    if (a == 11)
    {
        ytou1 += 2
        yshen1 += 2
    }
    if (a == 12)
    {
        xtou1--
        xshen1--
    }
    if (a == 13)
    {
        ytou1--
        yshen1 -= 2
        a = 0
    }
}
draw_sprite_ext(bssp382, 0, (120 + xj), (228 + yj), 2, 2, 0, c_white, image_alpha)
draw_sprite_ext(bssp381, shenxt, ((118 + xshen1) + xj), ((178 + yshen1) + yj), 2, 2, 0, c_white, image_alpha)
draw_sprite_ext(bssp380, touxt, ((119 + xtou1) + xj), ((130 + ytou1) + yj), 2, 2, 0, c_white, image_alpha)