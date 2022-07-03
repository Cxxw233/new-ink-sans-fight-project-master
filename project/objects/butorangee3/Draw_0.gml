draw_set_color(c_white)
draw_set_alpha(image_alpha)
draw_circle(x, y, drawr, 0)
if collision_circle(x, y, drawr, battle_soul, 1, 0)
{
    Player_Hurt()
}
if (mode == 6)
{
    sprite_index = battleextraaqua_6
    image_speed = 0
    image_xscale = 0.15
    image_yscale = 0.15
    draw_self()
}
