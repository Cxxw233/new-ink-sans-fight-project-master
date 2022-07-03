draw_self()
if smoke
{
    smokeTime++
    if ((smokeTime % 12) == 0)
    {
        ef = instance_create_depth((x + 30), (y - 30), (depth + 1), obj_effect)
        ef.sprite_index = spr_battle_espe_smoke
        ef.mode = 22
        ef.image_xscale = 2
        ef.image_yscale = 2
    }
}
for (i = 0; i < 80; i++)
{
    draw_sprite_ext(spr_pixel, 0, (x - 60), ((y - 80) + (i * 2)), effectScale, 1, 0, c_black, 1)
    draw_sprite_ext(spr_pixel, 0, (x + 60), ((y - 79) + (i * 2)), (-effectScale), 1, 0, c_black, 1)
}
if (mode == 1 && image_index != 12)
    image_index += 0.5
var BOTTOM = 46
var TOP = -146
var X = (-len)
if (mode == 2)
{
    time++
    if (bk_alpha != 1)
    {
        bk_alpha += 0.1
        bkTop += 2
        bkBottom -= 2
    }
    if (time == 10)
        GMU_Anim_New(id, "bkLength", 3, 11, 0, 60, 10)
    draw_sprite_ext(spr_espe_bk, 3, (xStart + X), (((yStart + TOP) + bkBottom) + BOTTOM), (1 + (bkBottom / 20)), (1 + (bkBottom / 20)), 0, c_white, bk_alpha)
    if (time < 20)
    {
        if (time > 10)
        {
            draw_sprite_ext(spr_espe_bk, 1, (xStart + X), (yStart + TOP), bkLength, 1, 0, c_white, 1)
            draw_sprite_ext(spr_espe_bk, 2, (((xStart + X) + bkLength) + 2), (yStart + TOP), 1, 1, 0, c_white, 1)
            draw_sprite_ext(spr_espe_bk, 2, (((xStart + X) - bkLength) - 2), (yStart + TOP), -1, 1, 0, c_white, 1)
            draw_sprite_ext(spr_espe_bk, 4, (xStart + X), ((yStart + TOP) + BOTTOM), bkLength, 1, 0, c_white, 1)
            draw_sprite_ext(spr_espe_bk, 5, (((xStart + X) + bkLength) + 2), ((yStart + TOP) + BOTTOM), 1, 1, 0, c_white, 1)
            draw_sprite_ext(spr_espe_bk, 5, (((xStart + X) - bkLength) - 2), ((yStart + TOP) + BOTTOM), -1, 1, 0, c_white, 1)
        }
        draw_sprite_ext(spr_espe_bk, 0, (xStart + X), ((yStart + TOP) + bkTop), (1 - (bkTop / 20)), (1 - (bkTop / 20)), 0, c_white, bk_alpha)
    }
    else
    {
        if (bkAlpha2 < 1)
            bkAlpha2 += 0.1
        if (bkX2 != 52)
        {
            bkX2 += ((52 - bkX2) / 8)
            if (abs((bkX2 - 52)) < 1)
                bkX2 = 52
        }
        draw_sprite_ext(spr_espe_bk, 7, ((xStart + X) + bkX2), (yStart + TOP), 1, 1, 0, c_white, bkAlpha2)
        draw_sprite_ext(spr_espe_bk, 7, ((xStart + X) - bkX2), (yStart + TOP), -1, 1, 0, c_white, bkAlpha2)
        draw_sprite_ext(spr_espe_bk, 6, (xStart + X), (yStart + TOP), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 3, (xStart + X), (yStart + TOP), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 4, (xStart + X), ((yStart + TOP) + BOTTOM), bkLength, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 5, (((xStart + X) + bkLength) + 2), ((yStart + TOP) + BOTTOM), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 5, (((xStart + X) - bkLength) - 2), ((yStart + TOP) + BOTTOM), -1, 1, 0, c_white, 1)
    }
	    if (bkX2 == 52)
    {
        warnTime++
        var TURN = but156.turn
        switch TURN
        {
            case 11:
                if (warnTime >= 1 && warnTime < 10)
                    warnAlpha += 0.1
                if (warnTime >= 60 && warnTime < 70)
                    warnAlpha -= 0.1
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime > 10)
                    {
                        for (i = 0; i < 3; i++)
                            bkIndex[i] += 0.5
                    }
                    draw_sprite_ext(spr_espe_bk_dj0, bkIndex[0], ((xStart + X) - 30), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj1, bkIndex[1], (xStart + X), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj2, bkIndex[2], ((xStart + X) + 30), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime >= 70 && warnTime < 80)
                    warnAlpha += 0.1
                if (warnTime >= 140 && warnTime < 150)
                    warnAlpha -= 0.1
                if (warnTime >= 70 && warnTime < 150)
                {
                    if (warnTime > 80)
                        bkIndex[3] += 0.16666666666666666
                    draw_sprite_ext(spr_espe_bk_dj3, bkIndex[3], (xStart + X), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 150)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 12:
                if (warnTime >= 1 && warnTime < 10)
                    warnAlpha += 0.1
                if (warnTime >= 60 && warnTime < 70)
                    warnAlpha -= 0.1
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime > 10)
                        bkIndex[2] += 0.5
                    if (warnTime > 20)
                        bkIndex[3] += 0.16666666666666666
                    draw_sprite_ext(spr_espe_bk_dj2, bkIndex[2], ((xStart + X) - 20), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj3, bkIndex[3], ((xStart + X) + 20), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 70)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 13:
                if (warnTime >= 1 && warnTime < 10)
                    warnAlpha += 0.1
                if (warnTime >= 60 && warnTime < 70)
                    warnAlpha -= 0.1
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime > 10)
                    {
                        bkIndex[2] += 0.5
                        bkIndex[0] += 0.5
                    }
                    draw_sprite_ext(spr_espe_bk_dj2, bkIndex[2], ((xStart + X) - 20), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj0, bkIndex[0], ((xStart + X) + 20), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 70)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 14:
                if (warnTime >= 1 && warnTime < 10)
                    warnAlpha += 0.1
                if (warnTime >= 60 && warnTime < 70)
                    warnAlpha -= 0.1
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime > 10)
                        bkIndex[0] += 0.5
                    if (warnTime > 20)
                        bkIndex[3] += 0.16666666666666666
                    draw_sprite_ext(spr_espe_bk_dj0, bkIndex[0], (xStart - 20), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj3, bkIndex[3], ((xStart + X) + 20), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 70)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 15:
                if (warnTime >= 1 && warnTime < 10)
                    warnAlpha += 0.1
                if (warnTime >= 60 && warnTime < 70)
                    warnAlpha -= 0.1
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime > 10)
                    {
                        bkIndex[0] += 0.5
                        bkIndex[2] += 0.5
                    }
                    if (warnTime > 20)
                        bkIndex[3] += 0.16666666666666666
                    draw_sprite_ext(spr_espe_bk_dj0, bkIndex[0], ((xStart + X) - 30), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj2, bkIndex[2], (xStart + X), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj3, bkIndex[3], ((xStart + X) + 30), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 70)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 16:
                if (warnTime >= 1 && warnTime < 10)
                    warnAlpha += 0.1
                if (warnTime >= 60 && warnTime < 70)
                    warnAlpha -= 0.1
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime > 10)
                    {
                        bkIndex[0] += 0.5
                        bkIndex[1] += 0.5
                        bkIndex[2] += 0.5
                    }
                    draw_sprite_ext(spr_espe_bk_dj0, bkIndex[0], ((xStart + X) - 30), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj1, bkIndex[1], (xStart + X), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj2, bkIndex[2], ((xStart + X) + 30), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 70)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 17:
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime >= 1 && warnTime < 10)
                        warnAlpha += 0.1
                    if (warnTime >= 60 && warnTime < 70)
                        warnAlpha -= 0.1
                    if (warnTime > 10)
                        bkIndex[2] += 0.5
                    if (warnTime > 20)
                        bkIndex[3] += 0.16666666666666666
                    draw_sprite_ext(spr_espe_bk_dj2, bkIndex[2], ((xStart + X) - 20), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj3, bkIndex[3], ((xStart + X) + 20), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 70)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 18:
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime >= 1 && warnTime < 10)
                        warnAlpha += 0.1
                    if (warnTime >= 60 && warnTime < 70)
                        warnAlpha -= 0.1
                    if (warnTime > 10)
                        bkIndex[1] += 0.5
                    draw_sprite_ext(spr_espe_bk_dj1, bkIndex[1], (xStart + X), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 70)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 19:
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime >= 1 && warnTime < 10)
                        warnAlpha += 0.1
                    if (warnTime >= 60 && warnTime < 70)
                        warnAlpha -= 0.1
                    if (warnTime > 10)
                        bkIndex[2] += 0.5
                    draw_sprite_ext(spr_espe_bk_dj2, bkIndex[2], (xStart + X), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 70)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
            case 20:
                if (warnTime >= 1 && warnTime < 10)
                    warnAlpha += 0.1
                if (warnTime >= 60 && warnTime < 70)
                    warnAlpha -= 0.1
                if (warnTime >= 1 && warnTime < 70)
                {
                    if (warnTime > 10)
                    {
                        for (i = 0; i < 3; i++)
                            bkIndex[i] += 0.5
                    }
                    draw_sprite_ext(spr_espe_bk_dj0, bkIndex[0], ((xStart + X) - 30), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj1, bkIndex[1], (xStart + X), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                    draw_sprite_ext(spr_espe_bk_dj2, bkIndex[2], ((xStart + X) + 30), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime >= 70 && warnTime < 80)
                    warnAlpha += 0.1
                if (warnTime >= 140 && warnTime < 150)
                    warnAlpha -= 0.1
                if (warnTime >= 70 && warnTime < 150)
                {
                    if (warnTime > 80)
                        bkIndex[3] += 0.16666666666666666
                    draw_sprite_ext(spr_espe_bk_dj3, bkIndex[3], (xStart + X), (((yStart + TOP) + (BOTTOM / 2)) + 2), 1, 1, 0, c_white, warnAlpha)
                }
                if (warnTime == 150)
                {
                    time = 35
                    warnTime = 0
                    mode = 3
                    for (i = 0; i < 4; i++)
                        bkIndex[i] = 0
                }
                break
        }

    }
}
if (mode == 3)
{
    time--
    if (time < 10 && time > 0)
    {
        bk_alpha -= 0.1
        bkTop -= 2
        bkBottom += 2
    }
    else if (time <= 0)
    {
        time = 0
        bkX2 = 0
        mode = 4
        bk_alpha = 0
    }
    if (time == 20)
    {
        GMU_Anim_New(id, "bkLength", 3, 11, 60, -60, 10)
        bkBottom = 0
        bkTop = 0
    }
    draw_sprite_ext(spr_espe_bk, 3, (xStart + X), (((yStart + TOP) + bkBottom) + BOTTOM), (1 + (bkBottom / 20)), (1 + (bkBottom / 20)), 0, c_white, bk_alpha)
    if (time >= 20)
    {
        if (bkAlpha2 > 0)
            bkAlpha2 -= 0.1
        if (bkX2 != 0)
        {
            bk_alpha = 1
            bkX2 += ((0 - bkX2) / 8)
            if (abs((bkX2 - 0)) < 1)
                bkX2 = 0
        }
        draw_sprite_ext(spr_espe_bk, 7, ((xStart + X) + bkX2), (yStart + TOP), 1, 1, 0, c_white, bkAlpha2)
        draw_sprite_ext(spr_espe_bk, 7, ((xStart + X) - bkX2), (yStart + TOP), -1, 1, 0, c_white, bkAlpha2)
        draw_sprite_ext(spr_espe_bk, 6, (xStart + X), (yStart + TOP), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 3, (xStart + X), (yStart + TOP), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 4, (xStart + X), ((yStart + TOP) + BOTTOM), bkLength, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 5, (((xStart + X) + bkLength) + 2), ((yStart + TOP) + BOTTOM), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 5, (((xStart + X) - bkLength) - 2), ((yStart + TOP) + BOTTOM), -1, 1, 0, c_white, 1)
    }
    if (time > 10 && time < 20)
    {
        draw_sprite_ext(spr_espe_bk, 1, (xStart + X), (yStart + TOP), bkLength, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 2, (((xStart + X) + bkLength) + 2), (yStart + TOP), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 2, (((xStart + X) - bkLength) - 2), (yStart + TOP), -1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 4, (xStart + X), ((yStart + TOP) + BOTTOM), bkLength, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 5, (((xStart + X) + bkLength) + 2), ((yStart + TOP) + BOTTOM), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_espe_bk, 5, (((xStart + X) - bkLength) - 2), ((yStart + TOP) + BOTTOM), -1, 1, 0, c_white, 1)
    }
    if (time < 20)
        draw_sprite_ext(spr_espe_bk, 0, (xStart + X), ((yStart + TOP) + bkTop), (1 - (bkTop / 20)), (1 - (bkTop / 20)), 0, c_white, bk_alpha)
}
if mode=4{
sp++
y+=sp}
