a++
ytou1 = ((-sin((a / 15))) * 2.4)
rot = (sin(((a / 60) * 4)) * 4.8)
tailrot = (sin(((a / 60) * 4)) * 9.6)
draw_sprite_ext(battleextrayellow_3, 0, (345 + xj), ((220 + yj) + ytou1), xs, 2.1, tailrot, c_white, 1)
draw_sprite_ext(battleextrayellow_1, 1, (320 + xj), (248 + yj), 2.1, 2.1, 0, c_white, 1)
draw_sprite_ext(battleextrayellow_1, 0, (320 + xj), ((247 + yj) + ytou1), 2.1, 2.1, 0, c_white, 1)
draw_sprite_ext(battleextrayellow_2, 0, (315 + xj), (186 + yj), 2.1, 2.1, (-rot), c_white, 1)
draw_sprite_ext(battleextrayellow_2, 1, (315 + xj), (186 + yj), 2.1, 2.1, rot, c_white, 1)
 
