if (st == 1 && instance_exists(battle_enemy_inkp1))
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, ((battle_enemy_inkp1.bthp[nb] / 5) * (!amgc)))
else
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, (1 * (!amgc)))
draw_sprite_ext(bsspxt3_bottlepiece, 0, x, y, 1, 1, 0, c_white, (image_index * (!amgc)))

 