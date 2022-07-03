a += 1.35
b += 2
s1y -= (sin((a / 5)) / 1.5)
s2y -= (sin((a / 5)) / 1.5)
sh1y -= (sin((a / 5)) / 1.5)
sh2y -= (sin((a / 5)) / 1.5)
legy -= (sin((a / 5)) / 1.5)
t1y -= (sin((a / 5)) / 1.8)
sangle += (sin((a / 10)) / 2.5)
sangle2 -= (sin((a / 10)) / 2.5)
s1x += (sin((a / 5)) / 1.5)
s2x -= (sin((a / 5)) / 1.5)
draw_sprite_pos(battleextraorange_5, 0, ((legx + 323) - 112), ((((legy - 54) + 197) + yy) - 1), ((legx + 323) + 114), ((((legy - 54) + 197) + yy) - 1), ((legx + 323) + 114), ((251 + yy) - 1), ((legx + 323) - 112), ((251 + yy) - 1), 1)
draw_sprite_ext(battleextraorange_8, 0, (((289 + s1x) + 80) - 8), (((131 + s1y) + yy) - 12), 2, 2, sangle, c_white, 1)
draw_sprite_ext(battleextraorange_1, 0, (((348 + s2x) - 80) + 26), (((132 + s2y) + yy) - 12), 2, 2, sangle2, c_white, 1)
draw_sprite_ext(battleextraorange_9, 0, (323 + sh1x), (((117 + sh1y) - 18) + yy), 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextraorange_11, 0, ((319 + t1x) - 2), (((84 + t1y) - 18) + yy), 2, 2, 0, c_white, 1)
 
