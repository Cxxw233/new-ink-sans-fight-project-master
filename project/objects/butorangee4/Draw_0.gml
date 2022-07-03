if instance_exists(battle_soul)
{
    if (mode == 0)
    {
        draw_self()
            draw_sprite_ext(sprite_index, 2, x, y, 2, 2, 0, c_white, (alpha + 1))
        if (a >= 50)
        {

                draw_set_color(c_red)
            draw_set_alpha((alpha + 1))
            draw_line(x, y, battle_soul.x, battle_soul.y)
        }
    }
    if (mode == 1)
    {
        b += 10
        if (b == 10)
        {
            var dirr = 0
            repeat (8)
            {
                but = instance_create_depth(x, y, 0,butorangee5)
                but.image_alpha = 0
                but.image_angle = dirr
                but.image_yscale = 600
                but.image_xscale = 0.5
                dirr += 45
            }
        }
        if (b < 100)
        {
            draw_self()
            draw_sprite_ext(sprite_index, 3, x, y, 2, 2, 0, c_white, alpha)
        }
        if (b == 680)
        {
            instance_destroy(butorangee3)
            instance_destroy(butorangee5)
            instance_destroy(gb1_2)
            instance_destroy(gb1_3)
        }
        draw_set_color(make_color_rgb(242, 101, 34))
        draw_set_alpha(alphaa)
        draw_circle(x, y, b, 0)
        if (b > 680 && b < 1680)
            alphaa -= 0.01
        if (b == 680)
        {
            ht = 0
            battle_soul.x = 320
            battle_soul.y = 320
            butorangee1.yy = -100
			Battle_SetBoardSize(165,65,233,233,1)
            bkorangeextra.xs = 102
            bkorangeextra.ys = 150
            bkorangeextra.ws = 435
            bkorangeextra.hs = 240
            bkorangeextra_black.xs = 102
            bkorangeextra_black.ys = 150
            bkorangeextra_black.ws = 435
            bkorangeextra_black.hs = 240
        }
        if (b == 1680)
            instance_destroy()
    }
    if (mode == 2)
    {
        draw_self()
        draw_sprite_ext(sprite_index, 3, x, y, 2, 2, 0, c_white, 1)
    }
    if (mode == 3)
    {
        draw_self()
        draw_sprite_ext(sprite_index, 4, x, y, 2, 2, 0, c_orange, alpha)
        if (a >= 10)
        {
            draw_set_color(c_orange)
            draw_set_alpha(alpha)
            draw_line(x, y, battle_soul.x, battle_soul.y)
        }
    }
    if (mode == 4)
    {
        draw_self()

            draw_sprite_ext(sprite_index, 5, x, y, 2, 2, 0, c_white, 1)
    }
    if (mode == 5)
    {
        draw_sprite_ext(sprite_index, 0, (battle_soul.x + lengthdir_x(len, dir)), (battle_soul.y + lengthdir_y(len, dir)), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 0, (battle_soul.x + lengthdir_x(len, (dir + 90))), (battle_soul.y + lengthdir_y(len, (dir + 90))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 0, (battle_soul.x + lengthdir_x(len, (dir + 180))), (battle_soul.y + lengthdir_y(len, (dir + 180))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 0, (battle_soul.x + lengthdir_x(len, (dir + 270))), (battle_soul.y + lengthdir_y(len, (dir + 270))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 2, (battle_soul.x + lengthdir_x(len, dir)), (battle_soul.y + lengthdir_y(len, dir)), 2, 2, 0, c_white, aa)
        draw_sprite_ext(sprite_index, 2, (battle_soul.x + lengthdir_x(len, (dir + 90))), (battle_soul.y + lengthdir_y(len, (dir + 90))), 2, 2, 0, c_white, aa)
        draw_sprite_ext(sprite_index, 2, (battle_soul.x + lengthdir_x(len, (dir + 180))), (battle_soul.y + lengthdir_y(len, (dir + 180))), 2, 2, 0, c_white, aa)
        draw_sprite_ext(sprite_index, 2, (battle_soul.x + lengthdir_x(len, (dir + 270))), (battle_soul.y + lengthdir_y(len, (dir + 270))), 2, 2, 0, c_white, aa)
        if (len == 120)
        {

                draw_set_color(c_red)
            draw_set_alpha(aa)
            draw_line((battle_soul.x + lengthdir_x(len, dir)), (battle_soul.y + lengthdir_y(len, dir)), battle_soul.x, battle_soul.y)
            draw_line((battle_soul.x + lengthdir_x(len, (dir + 90))), (battle_soul.y + lengthdir_y(len, (dir + 90))), battle_soul.x, battle_soul.y)
            draw_line((battle_soul.x + lengthdir_x(len, (dir + 180))), (battle_soul.y + lengthdir_y(len, (dir + 180))), battle_soul.x, battle_soul.y)
            draw_line((battle_soul.x + lengthdir_x(len, (dir + 270))), (battle_soul.y + lengthdir_y(len, (dir + 270))), battle_soul.x, battle_soul.y)
        }
        x = (battle_soul.x + lengthdir_x(len, dir))
        y = (battle_soul.y + lengthdir_y(len, dir))
    }
    if (mode == 6)
    {
        draw_sprite_ext(sprite_index, 0, (battle_soul.x + lengthdir_x(len, (dir + 45))), (battle_soul.y + lengthdir_y(len, (dir + 45))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 0, (battle_soul.x + lengthdir_x(len, ((dir + 90) + 45))), (battle_soul.y + lengthdir_y(len, ((dir + 90) + 45))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 0, (battle_soul.x + lengthdir_x(len, ((dir + 180) + 45))), (battle_soul.y + lengthdir_y(len, ((dir + 180) + 45))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 0, (battle_soul.x + lengthdir_x(len, ((dir + 270) + 45))), (battle_soul.y + lengthdir_y(len, ((dir + 270) + 45))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 5, (battle_soul.x + lengthdir_x(len, (dir + 45))), (battle_soul.y + lengthdir_y(len, (dir + 45))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 5, (battle_soul.x + lengthdir_x(len, ((dir + 90) + 45))), (battle_soul.y + lengthdir_y(len, ((dir + 90) + 45))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 5, (battle_soul.x + lengthdir_x(len, ((dir + 180) + 45))), (battle_soul.y + lengthdir_y(len, ((dir + 180) + 45))), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 5, (battle_soul.x + lengthdir_x(len, ((dir + 270) + 45))), (battle_soul.y + lengthdir_y(len, ((dir + 270) + 45))), 2, 2, 0, c_white, 1)
        x = (battle_soul.x + lengthdir_x(len, (dir + 45)))
        y = (battle_soul.y + lengthdir_y(len, (dir + 45)))
    }
    if (mode == 7)
    {
        draw_self()
        draw_sprite_ext(sprite_index, 4, x, y, 2, 2, 0, c_orange, 1)
        if (a >= 10)
        {
            draw_set_color(c_orange)
            draw_set_alpha(1)
            draw_line(x, y, battle_soul.x, battle_soul.y)
        }
    }
    if (mode == 8)
    {
        draw_self()
    }
    if (mode == -5)
        draw_self()
}