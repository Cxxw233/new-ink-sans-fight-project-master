b += 1
if (frac((b / 4)) == 0)
{
    a += 1
    if (a == 1)
        ytou1 -= 2
    if (a == 2)
    {
        ytou1 -= 2
        xtou1 += 2
        yshen1 -= 2
        xshen1 += 2
    }
    if (a == 3)
        ytou1 -= 2
    if (a == 4)
        ytou1 += 2
    if (a == 5)
    {
        ytou1 += 2
        yshen1 += 2
        xshen1 -= 2
    }
    if (a == 6)
        xtou1 -= 2
    if (a == 7)
        ytou1 -= 2
    if (a == 8)
    {
        xtou1 -= 2
        yshen1 -= 2
        xshen1 -= 2
    }
    if (a == 9)
        yshen1 += 2
    if (a == 10)
        ytou1 += 2
    if (a == 11)
    {
        ytou1 += 2
        yshen1 += 2
    }
    if (a == 12)
    {
        xtou1 += 2
        xshen1 += 2
        yshen1 -= 2
        a = 0
    }
}
if xt=1{
draw_sprite_ext(bssp311, 0, (272 + xj), (204 + yj), 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(bssp310, shenxt, ((260 + xshen1) + xj), ((154 + yshen1) + yj), 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(bssp309, touxt, ((282 + xtou1) + xj), ((106 + ytou1) + yj), 1, 1, 0, c_white, image_alpha)
}
if xt=2{
draw_sprite_ext(bssp311a1, 0, (272 + xj2), (204 + yj2), 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(bssp310a1, shenxt2, ((260 - (xshen1 / 2)) + xj2), ((102 + (yshen1 / 2)) + yj2), 1, 1, 0, c_white, image_alpha)
}
if xt=3{
draw_sprite_ext(bssp99geno, dark1, (180+xjj), (234 + yjj), 1, 1, 0, c_white, image_alpha-c)
draw_sprite_ext(bssp99cas, dark2, (320+xjj), (234 + yjj), 2, 2, 0, c_white, image_alpha)
}
