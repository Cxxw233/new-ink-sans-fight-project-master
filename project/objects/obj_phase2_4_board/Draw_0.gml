if (a <= 20)
    lng = (a * 20)
if (a >= 30 && a < 40)
    dy += 1
draw_set_color(c_white)
draw_sprite(bssp32, image_index, x, y)
draw_set_alpha(0.5)
draw_set_color(global.c_inkpurple)
draw_line_width(319, ((300 + obj_phase2_4_soul.cy) - (dy * 4.9)), (319 - min(85, lng)), (300 + obj_phase2_4_soul.cy), 2)
draw_line_width(319, ((300 + obj_phase2_4_soul.cy) - (dy * 4.9)), (319 + min(85, lng)), (300 + obj_phase2_4_soul.cy), 2)
draw_set_alpha(1)
draw_set_color(c_blue)
draw_line_width(319, (300 + lng), 319, 300, 2)
draw_set_color(c_green)
draw_line_width(319, 300, (319 + lng), (300 - (dy * 23.1)), 2)
draw_set_color(c_red)
draw_line_width(319, 300, (319 - lng), (300 - (dy * 23.1)), 2)
draw_set_color(c_white)
draw_sprite(sprite_index, image_index, x, y)
draw_set_color(c_blue)
draw_line_width(319, 300, 319, (300 - lng), 2)
draw_set_color(c_green)
draw_line_width(319, 300, (319 - lng), (300 + (dy * 23.1)), 2)
draw_set_color(c_red)
draw_line_width(319, 300, (319 + lng), (300 + (dy * 23.1)), 2)
draw_set_alpha(0.5)
draw_set_color(global.c_inkpurple)
draw_line_width(319, ((300 + obj_phase2_4_soul.cy) + (dy * 4.9)), (319 - min(85, lng)), (300 + obj_phase2_4_soul.cy), 2)
draw_line_width(319, ((300 + obj_phase2_4_soul.cy) + (dy * 4.9)), (319 + min(85, lng)), (300 + obj_phase2_4_soul.cy), 2)
draw_set_alpha(1)
draw_set_color(c_white)

 