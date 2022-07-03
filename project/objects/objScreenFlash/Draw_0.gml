draw_set_color(c_white)
draw_set_alpha((1 - transparency))
draw_rectangle((__view_get((0 << 0), 0) - 100), (__view_get((1 << 0), 0) - 100), ((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) + 100), ((__view_get((1 << 0), 0) + __view_get((3 << 0), 0)) + 100), false)
draw_set_alpha(1)
transparency += (1 / time)
if (transparency >= 1)
    instance_destroy()
 
