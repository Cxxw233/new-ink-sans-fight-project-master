if instance_exists(bkyellowextra)
{
    draw_set_color(c_white)
    draw_set_alpha((1 - transparency))
    draw_rectangle((bkyellowextra.xs + 5), (bkyellowextra.ys + 5), ((bkyellowextra.xs + bkyellowextra.ws) - 5), ((bkyellowextra.ys + bkyellowextra.hs) - 5), false)
    draw_set_alpha(1)
    transparency += 0.0425531914893617
    if (transparency >= 1)
        instance_destroy()
}
 
