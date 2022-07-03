draw_set_alpha(1)
draw_set_color(c_white)
draw_rectangle(0, 0, 640, 142, false)
draw_set_color(c_black)
draw_rectangle(5, 5, 634, 138, false)
draw_sprite_ext(face, 0, 20, 18, 1, 1, 0, c_white, 1)
draw_set_color(c_white)
draw_text_transformed(92, 18, string_copy(text, 1, count), 1, 1, 0)

 