a++
b += 2
ytou1 = sin((a / 30))
yshen1 = (sin((a / 30)) * 2)
if ((a % 30) == 0)
    shenxt++
cl = make_color_hsv((b % 255), 255, 200)
draw_sprite_ext(battleextrared_2, shenxt, 158, 82, 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextrared_3, 0, 205, (46 + ytou1), 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextrared_4, 0, 221, (92 + yshen1), 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextrared_5, 0, 375, (92 + yshen1), 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextrared_7, 0, 257, 178, 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextrared_6, 0, 255, 148, 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextrared_9, 0, 235, 232, 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextrared_1, 0, 273, (17 + ytou1), 2, 2, 0, c_white, 1)
draw_sprite_ext(battleextrared_8, 0, 200, (99 + yshen1), 2, 3, 3, c_white, 1)
draw_sprite_ext(battleextrared_8, 0, 373, (144 + yshen1), 1.52, 2.25, 22, c_white, 1)
draw_sprite_ext(battleextrared_10, 0, 155, (14 + yshen1), 2, 2, -24, cl, 1)
draw_sprite_ext(battleextrared_11, 0, 218, (78 + yshen1), 2, 2, -24, c_white, 1)
draw_sprite_ext(battleextrared_11, 1, 370, (152 + yshen1), 2, 2, -24, c_white, 1)
 
