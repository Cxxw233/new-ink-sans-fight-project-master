tl1++
if (tl1 < 39)
    dr1 += (39 - tl1)
if (tl1 > 37 && tl1 < 54)
    dr2 -= 0.1
draw_sprite_ext(battleyellow_1_1, -1, (320 - dr1), 0, dr2, 480, 0, c_white, 1)
draw_sprite_ext(battleyellow_1_1, -1, (320 + dr1), 0, dr2, 480, 0, c_white, 1)
if (tl1 == 54)
    instance_destroy()


