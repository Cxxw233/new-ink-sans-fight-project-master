if (mode == 13 || board)
{
    surface_set_target(Battle_GetBoardSurface())
    draw_self()
    surface_reset_target()
}
else if (sprite_index != -4)
    draw_self()
if (mode == 25)
{
    draw_self()
    surface_reset_target()
}
